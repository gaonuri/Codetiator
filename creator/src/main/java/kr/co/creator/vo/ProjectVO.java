package kr.co.creator.vo;

// 프로젝트
public class ProjectVO {
	private String project_num;			// 프로젝트번호
	private String img;					// 사진(경로)
	private String project_name;		// 이름
	private String price;				// 모집금액
	private String refund;				// 상환기간
	private String type;				// 게임유형
	private String genre;				// 장르
	private String grade;				// 등급
	private String more_information;	// 상세정보
	private String en_date;				// 등록날짜
	private String loan_period;			// 대출기간
	private String loan_amount;			// 대출계좌
	private String loan_class;			// 대출구분
<<<<<<< HEAD
	private String loan_type;			// 대출유형
=======
	private String loan_type;			// 대출유형
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
	private String repay_method;		// 상환방식
	private String judge_status;		// 심사상태
<<<<<<< HEAD
	private String repay_count;			// 상환차수
=======
	private String repay_count;			// 상환차수
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
	private String loan_history;		// 대출자 상환내역
	private String rate;				// 금리
	private String yield;				// 연 수익률
	private String current_price;		// 현재금액
	private String guarantee_price;		// 남은대출금액 
	private String deadline;			// 남은기간
	private String ach_rate;			// 모집현황
	private String ach_state;			// 모집상태
	private String customer;			// 투자자수
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
	private String user_num;			// (참조)유저번호
	private String busi_num;			// (참조)법인유저번호

	public ProjectVO() {}	//constructor
	public ProjectVO(	String project_num, String img, String project_name, String current_price, String price, 
						String guarantee_price, String deadline, String refund, String ach_rate, String customer, 
						String type, String genre, String yield, String grade, String more_information, String en_date, 
						String rate, String loan_period, String loan_amount, String loan_class, String loan_type, 
						String repay_method, String repay_count, String judge_status, String user_num, String busi_num) {
		this.project_num = project_num;
		this.img = img;
		this.project_name = project_name;
		this.current_price = current_price;
		this.price = price;
		this.guarantee_price = guarantee_price;
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
		this.loan_period = loan_period;
		this.loan_amount = loan_amount;
		this.loan_class = loan_class;
		this.loan_type = loan_type;
		this.repay_method = repay_method;
		this.repay_count = repay_count;
		this.judge_status = judge_status;
		
		this.user_num = user_num;
		this.busi_num = busi_num;
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
	
	public String getGuarantee_price() {
		return guarantee_price;
	}
	public void setGuarantee_price(String guarantee_price) {
		this.guarantee_price = guarantee_price;
	}//guarantee_price
	
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}//deadline
	
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}//refund

	public String getAch_rate() {
		return ach_rate;
	}
	public void setAch_rate(String ach_rate) {
		this.ach_rate = ach_rate;
	}//ach_rate

	public String getAch_state() {
		return ach_state;
	}
	public void setAch_state(String ach_state) {
		this.ach_state = ach_state;
	}//ach_state
	
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
	
	public String getLoan_period() {
		return loan_period;
	}
	public void setLoan_period(String loan_period) {
		this.loan_period = loan_period;
	}//loan_period
	
	public String getLoan_amount() {
		return loan_amount;
	}
	public void setLoan_amount(String loan_amount) {
		this.loan_amount = loan_amount;
	}//loan_amount
	
	public String getLoan_class() {
		return loan_class;
	}
	public void setLoan_class(String loan_class) {
		this.loan_class = loan_class;
	}//loan_class
	
	public String getLoan_type() {
		return loan_type;
	}
	public void setLoan_type(String loan_type) {
		this.loan_type = loan_type;
	}//loan_type
	
	public String getRepay_method() {
		return repay_method;
	}
	public void setRepay_method(String repay_method) {
		this.repay_method = repay_method;
	}//repay_method

	public String getRepay_count() {
		return repay_count;
	}
	public void setRepay_count(String repay_count) {
		this.repay_count = repay_count;
	}//repay_count

	public String getJudge_status() {
		return judge_status;
	}
	public void setJudge_status(String judge_status) {
		this.judge_status = judge_status;
	}//judge_status
	
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
<<<<<<< HEAD
	}//busi_num
=======
	}
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
	public String getLoan_history() {
		return loan_history;
	}
	public void setLoan_history(String loan_history) {
		this.loan_history = loan_history;
<<<<<<< HEAD
	}
=======
	}
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
}//class