package member;

import java.util.List;

public interface MemberService {
	
	int member_join(MemberVO vo);
	int member_idCheck(String userid); 					//회원가입시 아이디중복확인
	List<MemberVO> member_list();
	int member_password_update(MemberVO vo);			//비밀번호변경저장-임시비번발급,비번변경
	String member_salt(String userid);					//회원의 비번 암호화에 사용한 salt 조회
	String member_userid_email(MemberVO vo); 			//아이디/이메일이 일치하는 회원의 이름 조회
	int member_myInfo_update(MemberVO vo);				//마이페이지에서 회원정보변경저장
	MemberVO member_lotto_solo(MemberVO vo);			// 분석 번호
}
