package kr.co.creator.vo;

// 계좌
public class AccountVO {
	private String account_num;		// 계좌순서
	private String account_name;	// 예금주
	private String bank_name;		// 은행명
	private String bank_num;		// 계좌번호
	private String deposit;			// 예치금
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인유저번호
	
	public AccountVO() {}	//constructor
	public AccountVO(String account_num, String account_name, String bank_name, String bank_num, String deposit, String user_num, String busi_num) {
		this.account_num = account_num;
		this.account_name = account_name;
		this.bank_name = bank_name;
		this.bank_num = bank_num;
		this.deposit = deposit;
		this.user_num = user_num;
		this.busi_num = busi_num;
	}//constructor
	
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
