package member;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService{
	@Autowired @Qualifier("lotto") private SqlSession sql;
	@Override
	public int member_join(MemberVO vo) {
		return sql.insert("lo.insert", vo);
	}
	@Override
	public List<MemberVO> member_list() {
		return sql.selectList("lo.list");
	}
	@Override
	public int member_password_update(MemberVO vo) {
		return sql.update("lo.password_update", vo);
		
	}
	@Override
	public String member_salt(String userid) {
		return sql.selectOne("lo.salt", userid);
	}
	@Override
	public int member_idCheck(String userid) {
		return sql.selectOne("lo.idCheck", userid);
	}
	@Override
	public String member_userid_email(MemberVO vo) {
		return sql.selectOne("lo.userid_email", vo);
	}
	@Override
	public int member_myInfo_update(MemberVO vo) {
		return sql.update("lo.myInfo_update", vo);
	}
	@Override
	public MemberVO member_lotto_solo(MemberVO vo) {
		return sql.selectOne("lo.lotto_solo", vo);
	}
	
	
}
