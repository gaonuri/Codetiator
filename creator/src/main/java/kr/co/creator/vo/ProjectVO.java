package kr.co.creator.vo;

// 프로젝트
public class ProjectVO {
	private String project_num;			// 프로젝트번호
	private String img;					// 사진(경로)
	private String project_name;		// 이름
	private String current_price;		// 현재금액
	private String price;				// 목표금액
	private String deadline;			// 남은기간
	private String ach_rate;			// 달성률
	private String customer;			// 투자자수
	private String type;				// 게임유형
	private String genre;				// 장르
	private String yield;				// 수익률
	private String grade;				// 등급
	private String more_information;	// 상세정보
	private String en_date;				// 등록날짜
	private String rate;				// 금리
	
	private String loan_num;			// (참조)대출번호
	
	public ProjectVO() {}	//constructor
	public ProjectVO(String project_num, String img, String project_name, String current_price, String price, String deadline, String ach_rate, String customer, String type, String genre, String yield, String grade, String more_information, String en_date, String rate, String loan_num) {
		this.project_num = project_num;
		this.img = img;
		this.project_name = project_name;
		this.current_price = current_price;
		this.price = price;
		this.deadline = deadline;
		this.ach_rate = ach_rate;
		this.customer = customer;
		this.type = type;
		this.genre = genre;
		this.yield = yield;
		this.grade = grade;
		this.more_information = more_information;
		this.en_date = en_date;
		this.rate = rate;
		
		this.loan_num = loan_num;
	}//constructor
	
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}//img
	
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}//project_name
	
	public String getCurrent_price() {
		return current_price;
	}
	public void setCurrent_price(String current_price) {
		this.current_price = current_price;
	}//current_price
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}//price
	
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}//deadline

	public String getAch_rate() {
		return ach_rate;
	}
	public void setAch_rate(String ach_rate) {
		this.ach_rate = ach_rate;
	}//ach_rate
	
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}//customer
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}//type
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}//genre
	
	public String getYield() {
		return yield;
	}
	public void setYield(String yield) {
		this.yield = yield;
	}//yield
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}//grade
	
	public String getMore_information() {
		return more_information;
	}
	public void setMore_information(String more_information) {
		this.more_information = more_information;
	}//more_information
	
	public String getEn_date() {
		return en_date;
	}
	public void setEn_date(String en_date) {
		this.en_date = en_date;
	}//en_date
	
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}//rate
	
	//참조
	public String getLoan_num() {
		return loan_num;
	}
	public void setLoan_num(String loan_num) {
		this.loan_num = loan_num;
	}//loan_num
}//class