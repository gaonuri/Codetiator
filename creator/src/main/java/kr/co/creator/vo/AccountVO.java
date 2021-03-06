package kr.co.creator.vo;

// 계좌
public class AccountVO {
	private String account_num;		// 계좌등록번호
	private String account_name;	// 예금주
	private String bank_name;		// 은행명
	private String bank_num;		// 계좌번호
	private String deposit;			// 예치금
	private String deposit_chk;		// 예치금 생성여부
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인유저번호
	private String project_num;		// (참조)프로젝트번호
	
	
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}//account_num
	
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
	
	public String getDeposit_chk() {
		return deposit_chk;
	}
	public void setDeposit_chk(String deposit_chk) {
		this.deposit_chk = deposit_chk;
	}//deposit_chk
	
	
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
	
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
}//class
