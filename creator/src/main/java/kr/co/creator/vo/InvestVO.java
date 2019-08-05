package kr.co.creator.vo;

// 투자
public class InvestVO {
	private String invest_num;		// 투자번호
	private String invest_price;	// 투자금액
	private String invest_date;		// 투자날짜
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인 유저 순서
	private String project_num;		// (참조)프로젝트번호
	private String p_busi_num;		// (참조)프로젝트 신청하는 법인유저번호

	
	public String getInvest_num() {
		return invest_num;
	}
	public void setInvest_num(String invest_num) {
		this.invest_num = invest_num;
	}//invest_num
	
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
	
	public String getP_busi_num() {
		return p_busi_num;
	}
	public void setP_busi_num(String p_busi_num) {
		this.p_busi_num = p_busi_num;
	}//p_busi_num
}//class
