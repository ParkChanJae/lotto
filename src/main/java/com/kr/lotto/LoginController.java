package com.kr.lotto;

import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import common.CommonService;
import lombok.RequiredArgsConstructor;
import member.MemberService;
import member.MemberVO;


@Controller
@RequiredArgsConstructor
public class LoginController {
	
	@Autowired private SqlSession sql;
	@Autowired private MemberService member;
	@Autowired private CommonService common;
		
		//비밀번호 변경처리 요청
		@RequestMapping("/changePassword")
		public String changePassword(String mb_pw, HttpSession session) {
			//비지니스로직-화면에서 입력한 비밀번호로 DB에 변경저장한다.
			//기존의 salt(로그인정보) 를 사용해서 새로입력한 비번을 암호화한다
			MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
			mb_pw = common.getEncrypt( vo.getSalt(), mb_pw );
			vo.setMb_pw(mb_pw);
			//DB에 변경저장한다
			member.member_password_update(vo);
			session.setAttribute("loginInfo", vo);
			//응답화면연결
			return "redirect:/";
		}
	
		//비밀번호 변경 화면 요청
		@RequestMapping("/changePW.lo")
		public String changePw(HttpSession session) {
			session.setAttribute("category", "change");
			return "login/change";				
		}
	
		//비밀번호 재발급처리 요청
		@ResponseBody @RequestMapping(value="/reset", produces="text/html; charset=utf-8" )
		public String reset(MemberVO vo) {
			//비지니스로직-화면에서 입력한 아이디/이메일이 일치하는 회원에게 임시 비번을 발급해준다 
			//임시 비번을 생성한 후 회원정보에 변경저장 하고, 임시비번을 회원에게 이메일로 알려준다
			String name = member.member_userid_email(vo);
			if( name==null ) {
				StringBuffer msg = new StringBuffer("<script>");
				msg.append("alert('아이디 또는 이메일이 맞지 않습니다. \\n확인하세요!'); ");
				msg.append("history.go(-1);");
				msg.append("</script>");
  				return msg.toString();
			}
			
			//임시 비번을 생성
			String pw = UUID.randomUUID().toString();//afhlhj324afl_hlahfl235al_hafldka24 
			pw = pw.substring( pw.lastIndexOf("-")+1 ); //hafldka24 
			String salt = common.generateSalt();
			vo.setSalt( salt );
			vo.setMb_pw( common.getEncrypt(salt, pw) );
			vo.setMb_name( name );
			
			//회원정보에 변경저장
			StringBuffer msg = new StringBuffer("<script>");
			if( member.member_password_update(vo) == 1 && common.sendPassword(vo, pw) ) {
				msg.append("alert('임시 비밀번호가 발급되었습니다. \\n이메일을 확인하세요'); ");
				msg.append("location='/lotto'; "); //임시비번으로 로그인하도록 로그인화면 연결
			}else {
  				msg.append("alert('임시 비밀번호 발급 실패하셨습니다.'); ");
				msg.append("history.go(-1); ");
			}
			msg.append("</script>");
			
			return msg.toString();
		}
	
		//비밀번호 찾기 화면요청
		@RequestMapping("/pwfind.lo")
		public String Pwfind() {
			// 응답화면연결
			return "login/pwfind";
		}
		
		// 로그아웃
		@RequestMapping("/logout")
		public String logout(HttpSession session) {
			// 비지니스로직: 세션에 있는 로그인정보를 삭제한다
			session.removeAttribute("loginInfo");
			// 응답화면연결
			return "redirect:/";
		}
		
		// 카카오, 네이버 로그인 id
		private String NaverClientId = "5PBcZumET7jFMs18QkKW";
		private String NaverClientSecret = "fhrLmAi2yT";
		private String KakaoClientId = "2c53e5e01abff02c9e5eb20d962f48bb";
		
		//네이버로그인처리 요청
		@RequestMapping("/naverLogin")
		public String naverLogin(HttpSession session, HttpServletRequest request) {
			//3.4.2 네이버 로그인 연동 URL 생성하기
			//https://nid.naver.com/oauth2.0/authorize?response_type=code
			//&client_id=CLIENT_ID
			//&state=STATE_STRING
			//&redirect_uri=CALLBACK_URL
			String state = UUID.randomUUID().toString();
			session.setAttribute("state", state);
			
			StringBuffer url = new StringBuffer(
					"https://nid.naver.com/oauth2.0/authorize?response_type=code");
			url.append("&client_id=").append(NaverClientId);
			url.append("&state=").append(state);
			url.append("&redirect_uri=").append( common.appURL(request) ).append("/navercallback");
			url.append("&auth_type=reprompt"); //동의항목 재동의 요청
			return "redirect:" + url.toString();
		}
		
		//네이버콜백처리
		@RequestMapping("/navercallback")
		public String navercallback(String code, String state, HttpSession session) {
			//3.4.3 네이버 로그인 연동 결과 Callback 정보
			//API 요청 성공시 : http://콜백URL/redirect?code={code값}&state={state값}
			//API 요청 실패시 : http://콜백URL/redirect?state={state값}&error={에러코드값}&error_description={에러메시지}
			String sState = (String)session.getAttribute("state");
			if( code==null || ! state.equals(sState) ) return "redirect:/";
			
			//Callback으로 전달받은 'code' 값을 이용하여 '접근토큰발급API'를 호출
			//https://nid.naver.com/oauth2.0/token?grant_type=authorization_code
			//&client_id=jyvqXeaVOVmV
			//&client_secret=527300A0_COq1_XV33cf
			//&code=EIc5bFrl4RibFls1
			//&state=9kgsGTfH4j7IyAkg  
			
			StringBuffer url = new StringBuffer(
				"https://nid.naver.com/oauth2.0/token?grant_type=authorization_code");
			url.append("&client_id=").append(NaverClientId);
			url.append("&client_secret=").append(NaverClientSecret);
			url.append("&code=").append(code);
			url.append("&state=").append(state);
			String response = common.requestAPI( url.toString() );
			JSONObject json = new JSONObject( response );
			String token = json.getString("access_token");
			String type = json.getString("token_type");
			
			//3.4.5 접근 토큰을 이용하여 프로필 API 호출하기
			//curl  -XGET "https://openapi.naver.com/v1/nid/me" \
		    //-H "Authorization: Bearer AAAAPIuf0L+qfDkMABQ3IJ8heq2mlw71DojBj3oc2Z6OxMQESVSrtR0dbvsiQbPbP1/cxva23n7mQShtfK4pchdk/rc="
			response = common.requestAPI("https://openapi.naver.com/v1/nid/me", type + " " + token);
			json = new JSONObject( response );
			//API호출 결과코드가 정상(00)인 경우 프로필정보에 접근
			if( json.getString("resultcode").equals("00") ) {
				MemberVO vo = new MemberVO();
				vo.setSocial("N");
				
				json = json.getJSONObject("response");
				vo.setMb_id( json.getString("id") );
				vo.setMb_name( jsonValue("nickname", json) );
				if( vo.getMb_name().isEmpty() ) 
					vo.setMb_name( jsonValue("name", json, "...") );
				vo.setEmail( jsonValue("email", json) );
				vo.setPhone( jsonValue("mobile", json) );
				
				if( member.member_idCheck(vo.getMb_id())==1 ) { //update
					member.member_myInfo_update(vo);
				}else { //insert
					member.member_join(vo);
				}
				//소셜로그인되게 세션에 로그인정보를 담는다
				session.setAttribute("loginInfo", vo);
			}
			
			return "redirect:/";
		}
		
		//카카오로그인처리 요청
		@RequestMapping("/kakakoLogin")
		public String kakaoLogin(HttpSession session, HttpServletRequest request) {
			String state = UUID.randomUUID().toString();
			session.setAttribute("state", state);
			
			StringBuffer url = new StringBuffer(
					"https://kauth.kakao.com/oauth/authorize?response_type=code");
			url.append("&client_id=").append(KakaoClientId);
			url.append("&redirect_uri=").append( common.appURL(request) ).append("/kakaocallback");
			return "redirect:" + url.toString();
		}
		//카카오콜백처리
		@RequestMapping("/kakaocallback")
		public String kakaocallback(String code, HttpSession session) {
			if( code != null ) {
				//접근토큰 발급 요청
				StringBuffer url = new StringBuffer(
					"https://kauth.kakao.com/oauth/token?grant_type=authorization_code");
				url.append("&client_id=").append( KakaoClientId );
				url.append("&code=").append(code);
				
				String tokens = common.requestAPI( url.toString() );
				JSONObject json = new JSONObject( tokens );
				String token_type  = json.getString("token_type");
				String access_token  = json.getString("access_token");
				
				url = new StringBuffer("https://kapi.kakao.com/v2/user/me");
				String profile = common.requestAPI(
						url.toString(), token_type +" "+access_token);
				
				json = new JSONObject( profile );
				if( ! json.isEmpty() ) {
					
					MemberVO vo = new MemberVO();
					vo.setSocial("K");
					vo.setMb_id( json.get("id").toString() ); //"id":123456789,
					
					json = json.getJSONObject("kakao_account");
					vo.setMb_name( jsonValue("nickname", json, "이름안뜸") );
					vo.setEmail( jsonValue("email", json) );
					vo.setPhone( jsonValue("phone_number", json) );

					
					if( member.member_idCheck(vo.getMb_id())==1 ) { //update
						member.member_myInfo_update(vo);
					}else { //insert
						member.member_join(vo);
					}
					//소셜로그인되게 세션에 로그인정보를 담는다
					session.setAttribute("loginInfo", vo);		
				}	
			}
			
			return "redirect:/";
		}
		
		
		// 로그인처리 요청
		@ResponseBody
		@RequestMapping("/loginok")
		public boolean loginIn(String mb_id, String mb_pw, HttpSession session) {
			String salt = member.member_salt(mb_id);
			mb_pw = common.getEncrypt(salt, mb_pw);
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("mb_id", mb_id);
			map.put("mb_pw", mb_pw);
			MemberVO vo = sql.selectOne("lo.login", map);
			session.setAttribute("member", vo);
			session.setAttribute("loginInfo", vo);

			return vo == null ? false : true;
		}
	
		// 로그인 화면요청
		@RequestMapping("/login.lo")
		public String login(HttpSession session) {
			
			session.setAttribute("category", "login");
			return "login/login";
		}
	
		// 회원가입 
		@ResponseBody @PostMapping(value= "/insert", produces="text/html; charset=utf-8")
		public String insert(MemberVO vo, HttpServletRequest request) {
			//화면에서 입력한 정보를 DB에 저장한다.
			//입력한 비번을 암호화
			String salt = common.generateSalt();
			String userpw = common.getEncrypt(salt, vo.getMb_pw());
			vo.setSalt(salt);
			vo.setMb_pw(userpw);
			StringBuffer msg = new StringBuffer("<script>");
			if ( member.member_join(vo)==1 ) {
				msg.append("alert('회원가입을 축하합니다'); location='")
					.append( request.getContextPath() )
					.append("'; ");
			}else {
				msg.append("alert('회원가입 실패'); history.go(-1); ");
			}
			msg.append("</script>");
			
			//응답화면연결
			return msg.toString();
		}
		
		// 아이디 중복확인 요청
		@ResponseBody @RequestMapping("/idCheck.id")
		public boolean idcheck(String id) {
			//비지니스로직-화면에서 입력한 아이디가 DB에 존재하는지 확인: 0 아이디 존재X, 1 아이디 존재
			return member.member_idCheck(id)==0 ? false: true ;
		}

		// 회원가입 화면 요청
		@GetMapping("/insert")
		public String join(HttpSession session) {
			session.setAttribute("category", "insert");
			return "login/insert";
		}
		
		//약관동의
		@GetMapping("/consent.lo")
		public String consent() {
			
		return "login/consent";
		}
		
		
		
		private String jsonValue(String key, JSONObject json) {
			return json.has(key) ?  json.getString(key) : "";
		}
		private String jsonValue(String key, JSONObject json, String defaultValue) {
			return json.has(key) ?  json.getString(key) : defaultValue;
		}
		
		
		
		
		
		
		
}
