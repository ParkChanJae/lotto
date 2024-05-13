package com.kr.lotto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lotto.HomeLottoVO;
import lotto.LottoPageVO;
import lotto.LottoServiceImpl;


 
@Controller
public class HomeController {
	@Autowired private SqlSession sql;
	@Autowired private LottoServiceImpl service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model, LottoPageVO page, HomeLottoVO vo) {
		//1등~5등
		model.addAttribute("vo" , service.lotto_select(vo));
		
		//로또통계에서 받아오는 1등만 보는
		model.addAttribute("page", lotto_list(page));
		return "home";
	}
	
	@RequestMapping(value = "/homelotto", method = RequestMethod.POST)
	@ResponseBody
	public JSONObject lotto(@RequestParam("total") String total, @RequestParam("winner") String winner,
							@RequestParam("money") String money ) {
	    try {
	        // MySQL 연결 설정하기
	        String url = "jdbc:mysql://211.47.75.102/dbelem";
	        String user = "elem";
	        String password = "testtest1234";
	        Connection conn = DriverManager.getConnection(url, user, password);
	        
	        // SQL 쿼리 작성하기
	        String sql = "UPDATE homelotto SET no1_total = ?, no1_winner = ?, no1_money = ? WHERE no = ?";
	        
	        // PreparedStatement 객체 생성하기
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, total);
	        pstmt.setString(2, winner);
	        pstmt.setString(3, money);
	        pstmt.setInt(4, 1);
	        // SQL 실행하기
	        int result = pstmt.executeUpdate();
	        // JSON 형식으로 응답하기
	        JSONObject jsonResponse = new JSONObject();
	        jsonResponse.put("status", "success");
	        return jsonResponse;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        JSONObject jsonResponse = new JSONObject();
	        jsonResponse.put("status", "fail");
	        return jsonResponse;
	    }
	}
	
	// 페이지 처리
	public LottoPageVO lotto_list(LottoPageVO page) {
		page.setList(sql.selectList("lotto.plist", page));
		return page;
	}
}



//암호화하지 않은 비번에 대해 암호화해서 저장하는 처리 ------
//List<MemberVO> list = member.member_list();
//for(MemberVO vo : list ) { 
//	  //비밀번호가 있는 회원에 대해 암호화에 사용할
// //salt를 만든다 
//	  if( vo.getMb_pw()!=null ) { String salt = common.generateSalt();
//  String pw = common.getEncrypt(salt, vo.getMb_pw()); vo.setSalt(salt);
// vo.setMb_pw(pw); member.member_password_update(vo); } 
//	  }
 

//session.removeAttribute("category");