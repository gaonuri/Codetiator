package kr.co.creator.vo;

// 상환내역
public class RepayVO {
	private String repay_num;			// 상환번호
	private String invest_history;		// 투자자 상환내역
	private String loan_history;		// 대출자 상환내역
	
	private String user_num;			// (참조)유저번호
	private String busi_num;			// (참조)법인유저번호
	
	public RepayVO() {}	//constructor
	public RepayVO(String repay_num, String invest_history, String loan_history, String user_num, String busi_num) {
		this.repay_num = repay_num;
		this.invest_history = invest_history;
		this.loan_history = loan_history;
		
		this.user_num = user_num;
		this.busi_num = busi_num;
	}//constructor
	
	public String getRepay_num() {
		return repay_num;
	}
	public void setRepay_num(String repay_num) {
		this.repay_num = repay_num;
	}//repay_num
	
	public String getInvest_history() {
		return invest_history;
	}
	public void setInvest_history(String invest_history) {
		this.invest_history = invest_history;
	}//invest_history
	
	public String getLoan_history() {
		return loan_history;
	}
	public void setLoan_history(String loan_history) {
		this.loan_history = loan_history;
	}//loan_history
	
	
	//참조
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}//user_num
	
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}//busi_num
}//class