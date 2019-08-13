package kr.co.creator.vo;

// 프로젝트
public class ProjectVO {
	private String project_num;			// 프로젝트번호
	private String img;					// 사진(경로)
	private String project_name;		// 이름
	private String type;				// 게임유형
	private String genre;				// 장르
	private String grade;				// 등급
	private String more_information;	// 상세정보
	private String loan_bank_name;		// 대출은행명
	private String loan_amount;			// 대출계좌
	private String loan_class;			// 대출구분
	private String loan_request;		// 대출신청일자
	private String judge_status;		// 심사상태
	private String ing_status;			// 1:승인 2:심사 3:반려
	private String customer;			// 투자자수
	private String price;				// 모집금액
	private String loan_period;			// 대출기간
	private String repay_method;		// 상환방식
	private String agree_chk_1;			// 서비스 이용약관
	private String agree_chk_2;			// 개인정보제공
	private String agree_chk_3;			// 개인정보조회
	private String agree_chk_4;			// 개인정보수집,이용
	private String agree_chk_5;			// 고유식별정보 처리방침
	private String agree_chk_6;			// 개인정보 선택적 수집,이용
	private String end_date;			// 종료날짜
	private String regi_date;			// 등록날짜
	private String refund_count;		// 상환차수
	private String refund;				// 상환기간
	private String loan_history;		// 대출자 상환내역
	private String guarantee_price;		// 남은대출금액
	private String rate;				// 금리
	private String ach_rate;			// 모집현황
	private String ach_state;			// 모집상태
	private String current_price;		// 현재금액
	private String deadline;			// 남은기간
	private String refund_due_date;		// 상환예정일
	private String refund_end;			// 상환완료일
	private String ad_price;			// 광고금액
	private String ad_grade;			// 광고등급
	private String guarantee_type;		// 담보유형(부동산, 동산)
	private String object_type;			// 물건유형(아파트, 연립주택)
	
	private String user_num;			// (참조)유저번호
	private String busi_num;			// (참조)법인유저번호
	
	private String loan_count;			// 투자받은횟수
	private String project_count;		// 총프로젝트수
	private String rate_average;		// 평균 연수익률
	private int sum_price;				// 누적대출액
	private int sum_guarantee_price;	// 현재대출잔액

	public String getGuarantee_type() {
		return guarantee_type;
	}
	public void setGuarantee_type(String guarantee_type) {
		this.guarantee_type = guarantee_type;
	}
	public String getObject_type() {
		return object_type;
	}
	public void setObject_type(String object_type) {
		this.object_type = object_type;
	}
	public String getLoan_request() {
		return loan_request;
	}
	public void setLoan_request(String loan_request) {
		this.loan_request = loan_request;
	}
	public String getAd_price() {
		return ad_price;
	}
	public void setAd_price(String ad_price) {
		this.ad_price = ad_price;
	}
	public String getAd_grade() {
		return ad_grade;
	}
	public void setAd_grade(String ad_grade) {
		this.ad_grade = ad_grade;
	}
	public String getAgree_chk_1() {
		return agree_chk_1;
	}
	public void setAgree_chk_1(String agree_chk_1) {
		this.agree_chk_1 = agree_chk_1;
	}
	public String getAgree_chk_2() {
		return agree_chk_2;
	}
	public void setAgree_chk_2(String agree_chk_2) {
		this.agree_chk_2 = agree_chk_2;
	}
	public String getAgree_chk_3() {
		return agree_chk_3;
	}
	public void setAgree_chk_3(String agree_chk_3) {
		this.agree_chk_3 = agree_chk_3;
	}
	public String getAgree_chk_4() {
		return agree_chk_4;
	}
	public void setAgree_chk_4(String agree_chk_4) {
		this.agree_chk_4 = agree_chk_4;
	}
	public String getAgree_chk_5() {
		return agree_chk_5;
	}
	public void setAgree_chk_5(String agree_chk_5) {
		this.agree_chk_5 = agree_chk_5;
	}
	public String getAgree_chk_6() {
		return agree_chk_6;
	}
	public void setAgree_chk_6(String agree_chk_6) {
		this.agree_chk_6 = agree_chk_6;
	}
	public String getLoan_bank_name() {
		return loan_bank_name;
	}
	public void setLoan_bank_name(String loan_bank_name) {
		this.loan_bank_name = loan_bank_name;
	}
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
	
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}//rate
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}//price
	
	public String getCurrent_price() {
		return current_price;
	}
	public void setCurrent_price(String current_price) {
		this.current_price = current_price;
	}//current_price

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
	
	public String getRepay_method() {
		return repay_method;
	}
	public void setRepay_method(String repay_method) {
		this.repay_method = repay_method;
	}//repay_method
	
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

	public String getRefund_count() {
		return refund_count;
	}
	public void setRefund_count(String refund_count) {
		this.refund_count = refund_count;
	}//refund_count
	
	public String getLoan_history() {
		return loan_history;
	}
	public void setLoan_history(String loan_history) {
		this.loan_history = loan_history;
	}//loan_history
	
	public String getGuarantee_price() {
		return guarantee_price;
	}
	public void setGuarantee_price(String guarantee_price) {
		this.guarantee_price = guarantee_price;
	}//guarantee_price
	
	public String getRefund_due_date() {
		return refund_due_date;
	}
	public void setRefund_due_date(String refund_due_date) {
		this.refund_due_date = refund_due_date;
	}//refund_due_date
	
	public String getRefund_end() {
		return refund_end;
	}
	public void setRefund_end(String refund_end) {
		this.refund_end = refund_end;
	}//refund_end
	
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
	
	public String getRegi_date() {
		return regi_date;
	}
	public void setRegi_date(String regi_date) {
		this.regi_date = regi_date;
	}//end_date
	
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}//end_date
	
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
	
	public String getJudge_status() {
		return judge_status;
	}
	public void setJudge_status(String judge_status) {
		this.judge_status = judge_status;
	}//judge_status
	
	public String getIng_status() {
		return ing_status;
	}
	public void setIng_status(String ing_status) {
		this.ing_status = ing_status;
	}//ing_status
	
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}//customer
	
	public String getLoan_count() {
		return loan_count;
	}
	public void setLoan_count(String loan_count) {
		this.loan_count = loan_count;
	}//loan_count
	
	public String getProject_count() {
		return project_count;
	}
	public void setProject_count(String project_count) {
		this.project_count = project_count;
	}//project_count
	
	public String getRate_average() {
		return rate_average;
	}
	public void setRate_average(String rate_average) {
		this.rate_average = rate_average;
	}//rate_average
	
	public int getSum_price() {
		return sum_price;
	}
	public void setSum_price(int sum_price) {
		this.sum_price = sum_price;
	}//sum_price
	
	public int getSum_guarantee_price() {
		return sum_guarantee_price;
	}
	public void setSum_guarantee_price(int sum_guarantee_price) {
		this.sum_guarantee_price = sum_guarantee_price;
	}//sum_guarantee_price
	
	
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
