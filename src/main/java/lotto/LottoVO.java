package lotto;

public class LottoVO {
	
	private int drwNo; // 회차
	private int drwtNo1;
	private int drwtNo2;
	private int drwtNo3;
	private int drwtNo4;
	private int drwtNo5;
	private int drwtNo6;
    private String winningNumbers; // 당첨번호
    private int bnusNo; // 보너스번호
    private String drawDate; // 추첨일
    private String firstWinamnt; // 1등당첨금
    private String firstwinner; // 1등당첨자수
    
    
    
	public String getFirstWinamnt() {
		return firstWinamnt;
	}
	public void setFirstWinamnt(String firstWinamnt) {
		this.firstWinamnt = firstWinamnt;
	}
	public int getBnusNo() {
		return bnusNo;
	}
	public void setBnusNo(int bnusNo) {
		this.bnusNo = bnusNo;
	}
	public String getFirstwinner() {
		return firstwinner;
	}
	public void setFirstwinner(String firstwinner) {
		this.firstwinner = firstwinner;
	}
	public int getDrwNo() {
		return drwNo;
	}
	public void setDrwNo(int drwNo) {
		this.drwNo = drwNo;
	}
	public int getDrwtNo1() {
		return drwtNo1;
	}
	public void setDrwtNo1(int drwtNo1) {
		this.drwtNo1 = drwtNo1;
	}
	public int getDrwtNo2() {
		return drwtNo2;
	}
	public void setDrwtNo2(int drwtNo2) {
		this.drwtNo2 = drwtNo2;
	}
	public int getDrwtNo3() {
		return drwtNo3;
	}
	public void setDrwtNo3(int drwtNo3) {
		this.drwtNo3 = drwtNo3;
	}
	public int getDrwtNo4() {
		return drwtNo4;
	}
	public void setDrwtNo4(int drwtNo4) {
		this.drwtNo4 = drwtNo4;
	}
	public int getDrwtNo5() {
		return drwtNo5;
	}
	public void setDrwtNo5(int drwtNo5) {
		this.drwtNo5 = drwtNo5;
	}
	public int getDrwtNo6() {
		return drwtNo6;
	}
	public void setDrwtNo6(int drwtNo6) {
		this.drwtNo6 = drwtNo6;
	}
	public String getWinningNumbers() {
		return winningNumbers;
	}
	public void setWinningNumbers(String winningNumbers) {
		this.winningNumbers = winningNumbers;
	}

	public String getDrawDate() {
		return drawDate;
	}
	public void setDrawDate(String drawDate) {
		this.drawDate = drawDate;
	}
	
}
