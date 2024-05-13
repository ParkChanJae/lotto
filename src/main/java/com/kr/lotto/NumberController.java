package com.kr.lotto;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lotto.LottoServiceImpl;
import lotto.LottoSoloVO;
import member.MemberVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Controller
public class NumberController {
		
		@Autowired private SqlSession sql;
		@Autowired private LottoServiceImpl service;
		
		//공지사항리스트 화면
		@RequestMapping("/number.no")
		public String Num() {
		// 응답화면연결
		return "number/number";
		}
		//분석 및 용어 화면
		@RequestMapping("/term.nu")
		public String Solo(Model model, HttpSession session, LottoSoloVO vo) {
			 MemberVO member = (MemberVO) session.getAttribute("member"); // 세션에서 사용자 정보 가져오기
			 vo.setMb_id(member.getMb_id());
			 model.addAttribute("vo", service.lotto_select(vo));
		    // 응답화면 연결
		    return "number/term";
		}	
		
		@ResponseBody
		@RequestMapping( "/lottoinsert")
		public LottoSoloVO SoloInsert(Model model, LottoSoloVO vo, HttpSession session) {
		    List<Integer> numbers = new ArrayList<>();
		    Random random = new Random();
		    
		    // 1~45까지의 숫자 중 랜덤으로 6개 생성
		    while (numbers.size() < 6) {
		        int number = random.nextInt(45) + 1;
		        if (!numbers.contains(number)) {
		            numbers.add(number);
		        }
		    }
		    
		    // 생성된 숫자를 오름차순으로 정렬
		    Collections.sort(numbers);
		    
		    // 보너스 번호 생성
		    int bonusNumber = random.nextInt(45) + 1;
		    
		    // 생성된 숫자와 보너스 번호를 LottoSoloVO 객체에 할당
		    vo.setDrwtNo1(numbers.get(0));
		    vo.setDrwtNo2(numbers.get(1));
		    vo.setDrwtNo3(numbers.get(2));
		    vo.setDrwtNo4(numbers.get(3));
		    vo.setDrwtNo5(numbers.get(4));
		    vo.setDrwtNo6(numbers.get(5));
		    vo.setBonusNumber(bonusNumber);
		    MemberVO member = (MemberVO) session.getAttribute("member"); // 세션에서 사용자 정보 가져오기
		    vo.setMb_id(member.getMb_id());
		    model.addAttribute("soloinsert", service.lotto_solo(vo));
		    
		    return vo;
		}
		
			@ResponseBody
			@RequestMapping("/smssend")
			public Map<String, Object> smssend(Model model, LottoSoloVO vo, HttpSession session, HttpServletResponse response) {
				MemberVO member = (MemberVO) session.getAttribute("member"); // 세션에서 사용자 정보 가져오기
				model.addAttribute("loginInfo", member);
				//쿨에스엠에스 api
				String api_key = "NCSF0WC1AO6M6LR3";
			    String api_secret = "U28Y2HWEUQZQHOONPMQXUGTNOZFWRLY1";
			    Message coolsms = new Message(api_key, api_secret);

			    List<Integer> numbers = new ArrayList<>();
			    Random random = new Random();
			    
			    // 1~45까지의 숫자 중 랜덤으로 6개 생성
			    while (numbers.size() < 6) {
			        int number = random.nextInt(45) + 1;
			        if (!numbers.contains(number)) {
			            numbers.add(number);
			        }
			    }
			    
			    // 생성된 숫자를 오름차순으로 정렬
			    Collections.sort(numbers);
			    
			    // 보너스 번호 생성
			    int bonusNumber = random.nextInt(45) + 1;
			    
			    // 생성된 숫자와 보너스 번호를 LottoSoloVO 객체에 할당
			    vo.setDrwtNo1(numbers.get(0));
			    vo.setDrwtNo2(numbers.get(1));
			    vo.setDrwtNo3(numbers.get(2));
			    vo.setDrwtNo4(numbers.get(3));
			    vo.setDrwtNo5(numbers.get(4));
			    vo.setDrwtNo6(numbers.get(5));
			    vo.setBonusNumber(bonusNumber);
			    vo.setMb_id(member.getMb_id());
			    
			    // 4 params(to, from, type, text) are mandatory. must be filled
			    HashMap<String, String> params = new HashMap<String, String>();
			    params.put("to", "01034844308");	// 수신전화번호
			    params.put("from", "01034844308");	// 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
			    params.put("type", "SMS");
			    String message = member.getMb_name() + "님 믿음로또를 이용해주셔서 감사합니다. 번호는 ";
			    message += vo.getDrwtNo1() + " ";
			    message += vo.getDrwtNo2() + " ";
			    message += vo.getDrwtNo3() + " ";
			    message += vo.getDrwtNo4() + " ";
			    message += vo.getDrwtNo5() + " ";
			    message += vo.getDrwtNo6() + " ";
			    message += "(보너스 번호: " + vo.getBonusNumber() + ")";
			    params.put("text", message);
			    params.put("app_version", "test app 1.2"); // application name and version
			    
			    try {
			        JSONObject obj = (JSONObject) coolsms.send(params);
			        System.out.println(obj.toString());
			        Map<String, Object> result = new HashMap<String, Object>();
			        result.put("success", true);
			        return result;
			    } catch (CoolsmsException e) {
			        System.out.println(e.getMessage());
			        System.out.println(e.getCode());
			        Map<String, Object> result = new HashMap<String, Object>();
			        result.put("success", false);
			        result.put("message", e.getMessage());
			        return result;
			    }
			}
		
}
