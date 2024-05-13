package lotto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("lotto")
public class LottoServiceImpl implements LottoService {
	@Autowired private LottoDAO dao;
	@Override
	public int lotto_update(HomeLottoVO vo) {
		return dao.lotto_update(vo);
	}
	@Override
	public HomeLottoVO lotto_select(HomeLottoVO vo) {
		return dao.lotto_select(vo);
	}
	@Override
	public int lotto_solo(LottoSoloVO vo) {
		return dao.lotto_solo(vo);
	}
	@Override
	public LottoSoloVO lotto_select(LottoSoloVO vo) {
		return dao.lotto_select(vo);
	}

}
