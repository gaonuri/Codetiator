package kr.co.creator.vo;

// ?봽濡쒖젥?듃
public class MypageVO {
	private String project_num;			// ?봽濡쒖젥?듃踰덊샇
	private String project_name;		// ?씠由?
	private String deadline;			// ?궓??湲곌컙
	private String refund;				// ?긽?솚湲곌컙
	private String ach_state;			// 紐⑥쭛?긽?깭
	private String rate;				// 湲덈━
	private String repay_method;		// ?긽?솚諛⑹떇
	private String repay_count;			// ?긽?솚李⑥닔
	private String invest_date;		// �닾�옄�궇吏�
	private String user_num;			// (李몄“)?쑀??踰덊샇
	private String busi_num;			// (李몄“)踰뺤씤?쑀??踰덊샇	
	
	public String getInvest_date() {
		return invest_date;
	}
	public void setInvest_date(String invest_date) {
		this.invest_date = invest_date;
	}
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public String getAch_state() {
		return ach_state;
	}
	public void setAch_state(String ach_state) {
		this.ach_state = ach_state;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getRepay_method() {
		return repay_method;
	}
	public void setRepay_method(String repay_method) {
		this.repay_method = repay_method;
	}
	public String getRepay_count() {
		return repay_count;
	}
	public void setRepay_count(String repay_count) {
		this.repay_count = repay_count;
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