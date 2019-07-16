package kr.co.creator.vo;

// 상환내역
public class JudgeVO {
	private String judge_num;		// 심사번호
	private String judge_success;	// 심사성공여부
	
	private String project_num;		// (참조)프로젝트번호
	
	public JudgeVO() {}	//constructor
	public JudgeVO(String judge_num, String judge_success, String project_num) {
		this.judge_num = judge_num;
		this.judge_success = judge_success;
		
		this.project_num = project_num;
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
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
}//class