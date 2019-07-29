package kr.co.creator.vo;

// 투자자입출금
public class InOutVO {
	private String in_out_num;		// 입출금번호
	private String input_history;	// 입금내역
	private String output_history;	// 출금내역
	private String user_num; // 유저 번호
	
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}
	private String account_num;		// (참조)계좌순서
	
	public InOutVO() {}	//constructor
	public InOutVO(String in_out_num, String input_history, String output_history, String account_num) {
		this.in_out_num = in_out_num;
		this.input_history = input_history;
		this.output_history = output_history;
		
		this.account_num = account_num;
	}//constructor
	
	public String getIn_out_num() {
		return in_out_num;
	}
	public void setIn_out_num(String in_out_num) {
		this.in_out_num = in_out_num;
	}//in_out_num
	
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
	
	
	//참조
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}//account_num
}//class
