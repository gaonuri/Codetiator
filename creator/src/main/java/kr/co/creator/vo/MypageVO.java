package kr.co.creator.vo;

// 마이페이지
public class MypageVO {
	private String project_num;			// 프로젝트번호
	private String project_name;		// 이름
	private String refund_end;			// 상환완료일
	private String refund;				// 상환기간
	private String ach_state;			// 모집상태
	private String rate;				// 금리
	private String repay_method;		// 상환방식
	private String repay_count;			// 상환차수
	private String invest_date;			// 투자날짜
	private String invest_price;		// 투자금액
	private String refund_count;		// 상환차수
	private String account_name;		// 예금주
	private String bank_name;			// 은행명
	private String bank_num;			// 계좌번호
	private String deposit;				// 예치금
	private String input_history;		// 입금내역
	private String output_history;		// 출금내역
	
	private String user_num;			// (참조)유저번호
	private String busi_num;			// (참조)법인유저번호
	private String refund_due_date;		// 상환예정일
	private String user_name;			// 회원 이름
	private String manager_name;		// 담당자명
	private String email;				// 회원 이메일
	private String manager_email;		// 담당자 이메일 
	
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	public String getRefund_due_date() {
		return refund_due_date;
	}
	public void setRefund_due_date(String refund_due_date) {
		this.refund_due_date = refund_due_date;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}//account_name
	
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}//bank_name
	
	public String getBank_num() {
		return bank_num;
	}
	public void setBank_num(String bank_num) {
		this.bank_num = bank_num;
	}//bank_num
	
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}//deposit
	
	public String getInput_history() {
		return input_history;
	}
	public void setInput_history(String input_history) {
		this.input_history = input_history;
	}//input_history
	
	public String getOutput_history() {
		return output_history;
	}
	public void setOutput_history(String output_history) {
		this.output_history = output_history;
	}//output_history
	
	public String getRefund_count() {
		return refund_count;
	}
	public void setRefund_count(String refund_count) {
		this.refund_count = refund_count;
	}//refund_count

	public String getRefund_end() {
		return refund_end;
	}
	public void setRefund_end(String refund_end) {
		this.refund_end = refund_end;
	}//refund_end
	
	public String getInvest_price() {
		return invest_price;
	}
	public void setInvest_price(String invest_price) {
		this.invest_price = invest_price;
	}//invest_price
	
	public String getInvest_date() {
		return invest_date;
	}
	public void setInvest_date(String invest_date) {
		this.invest_date = invest_date;
	}//invest_date
	
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
	
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}//project_name
	
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}//refund
	
	public String getAch_state() {
		return ach_state;
	}
	public void setAch_state(String ach_state) {
		this.ach_state = ach_state;
	}//ach_state
	
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}//rate
	
	public String getRepay_method() {
		return repay_method;
	}
	public void setRepay_method(String repay_method) {
		this.repay_method = repay_method;
	}//repay_method
	
	public String getRepay_count() {
		return repay_count;
	}
	public void setRepay_count(String repay_count) {
		this.repay_count = repay_count;
	}//repay_count
	
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