package kr.co.creator.vo;

// 상환내역
public class JudgeVO {
	private String judge_num;			// 심사번호
	private String judge_success;	// 투자자 상환내역
	
	private String loan_num;			// (참조)대출법인
	
	public JudgeVO() {}	//constructor
	public JudgeVO(String judge_num, String judge_success, String loan_num) {
		this.judge_num = judge_num;
		this.judge_success = judge_success;
		
		this.loan_num = loan_num;
	}//constructor
	
	public String getJudge_num() {
		return judge_num;
	}
	public void setJudge_num(String judge_num) {
		this.judge_num = judge_num;
	}//judge_num
	
	public String getJudge_success() {
		return judge_success;
	}
	public void setJudge_success(String judge_success) {
		this.judge_success = judge_success;
	}//judge_success

	
	//참조
	public String getLoan_num() {
		return loan_num;
	}
	public void setLoan_num(String loan_num) {
		this.loan_num = loan_num;
	}//loan_num
}//class