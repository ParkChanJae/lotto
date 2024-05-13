package lotto;

public interface LottoService {
	
	int lotto_update(HomeLottoVO vo); //로또 수정
	HomeLottoVO lotto_select(HomeLottoVO vo); // 1~5등 조회
	int lotto_solo(LottoSoloVO vo);	// 개인 로또번호지급
	LottoSoloVO lotto_select(LottoSoloVO vo); // 개인로또 조회
}
