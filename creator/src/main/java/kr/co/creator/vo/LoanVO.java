package kr.co.creator.vo;

// 담보
public class LoanVO {
	private String loan_num;		// 대출번호
	private String loan_price;		// 대출금액
	private String loan_period;		// 대출기간
	private String loan_amount;		// 대출량
	private String loan_class;		// 대출구분
	private String loan_purpose;	// 대출목적
	private String repay_method;	// 상환방식
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인 유저번호
	
	public LoanVO() {}	//constructor
	public LoanVO(String loan_num, String loan_price, String loan_amount, String loan_class, String loan_purpose, String repay_method, String user_num, String busi_num) {
		this.loan_num = loan_num;
		this.loan_price = loan_price;
		this.loan_amount = loan_amount;
		this.loan_class = loan_class;
		this.loan_purpose = loan_purpose;
		this.repay_method = repay_method;
		
		this.user_num = user_num;
		this.busi_num = busi_num;
	}//constructor
	
	public String getLoan_num() {
		return loan_num;
	}
	public void setLoan_num(String loan_num) {
		this.loan_num = loan_num;
	}//loan_num
	
	public String getLoan_price() {
		return loan_price;
	}
	public void setLoan_price(String loan_price) {
		this.loan_price = loan_price;
	}//loan_price
	
	public String getLoan_period() {
		return loan_period;
	}
	public void setLoan_period(String loan_period) {
		this.loan_period = loan_period;
	}//loan_period
	
	public String getLoan_amount() {
		return loan_amount;
	}
	public void setLoan_amount(String loan_amount) {
		this.loan_amount = loan_amount;
	}//loan_amount
	
	public String getLoan_class() {
		return loan_class;
	}
	public void setLoan_class(String loan_class) {
		this.loan_class = loan_class;
	}//loan_class
	
	public String getLoan_purpose() {
		return loan_purpose;
	}
	public void setLoan_purpose(String loan_purpose) {
		this.loan_purpose = loan_purpose;
	}//loan_purpose
	
	public String getRepay_method() {
		return repay_method;
	}
	public void setRepay_method(String repay_method) {
		this.repay_method = repay_method;
	}//repay_method
	
	
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