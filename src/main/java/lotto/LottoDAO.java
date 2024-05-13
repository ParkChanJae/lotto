package lotto;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LottoDAO implements LottoService {
	@Autowired @Qualifier("lotto") private SqlSession sql;
	@Override
	public int lotto_update(HomeLottoVO vo) {
		return sql.update("lotto.update", vo);
	}
	@Override
	public HomeLottoVO lotto_select(HomeLottoVO vo) {
		return sql.selectOne("lotto.homelist" , vo);
	}
	@Override
	public int lotto_solo(LottoSoloVO vo) {
		return sql.insert("lotto.soloinsert", vo);
	}
	@Override
	public LottoSoloVO lotto_select(LottoSoloVO vo) {
		return sql.selectOne("lotto.solo_select", vo);
	}

}
