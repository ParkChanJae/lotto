package lotto;

import java.util.List;

import common.PageVO;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class LottoPageVO extends PageVO{
	private List<LottoVO> list;

	public List<LottoVO> getList() {
		return list;
	}

	public void setList(List<LottoVO> list) {
		this.list = list;
	}
	
	
}
