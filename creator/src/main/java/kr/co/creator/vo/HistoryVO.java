package kr.co.creator.vo;

public class HistoryVO {
	private String history_num;			// 이력순서
	private String log_in_out_time;		// 로그인 시간
	private String log_in_out_type;		// 로그아웃 시간
	
	private String user_num;			// 유저번호
	private String busi_num;			// 법인유저 번호
		
	public HistoryVO() {}	//constructor
	public HistoryVO(String history_num, String log_in_out_time, String log_in_out_type, String user_num, String busi_num) {
		this.history_num = history_num;
		this.log_in_out_time = log_in_out_time;
		this.log_in_out_type = log_in_out_type;
		this.user_num = user_num;
		this.busi_num = busi_num;
	}//constructor
	public String getHistory_num() {
		return history_num;
	}
	public void setHistory_num(String history_num) {
		this.history_num = history_num;
	}
	public String getLog_in_out_time() {
		return log_in_out_time;
	}
	public void setLog_in_out_time(String log_in_out_time) {
		this.log_in_out_time = log_in_out_time;
	}
	public String getLog_in_out_type() {
		return log_in_out_type;
	}
	public void setLog_in_out_type(String log_in_out_type) {
		this.log_in_out_type = log_in_out_type;
	}
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}
	
	
}//class
