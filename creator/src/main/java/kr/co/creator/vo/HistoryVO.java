package kr.co.creator.vo;

public class HistoryVO {
	private String history_num;		// 이력순서
	private String login_time;		// 로그인 시간
	private String logout_time;		// 로그아웃 시간
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인유저 번호
	
	public HistoryVO() {}	//constructor
	public HistoryVO(String history_num, String login_time, String logout_time, String user_num, String busi_num) {
		this.history_num = history_num;
		this.login_time = login_time;
		this.logout_time = logout_time;
		this.user_num = user_num;
		this.busi_num = busi_num;
	}//constructor
	public String getHistory_num() {
		return history_num;
	}
	public void setHistory_num(String history_num) {
		this.history_num = history_num;
	}
	public String getLogin_time() {
		return login_time;
	}
	public void setLogin_time(String login_time) {
		this.login_time = login_time;
	}
	public String getLogout_time() {
		return logout_time;
	}
	public void setLogout_time(String logout_time) {
		this.logout_time = logout_time;
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
