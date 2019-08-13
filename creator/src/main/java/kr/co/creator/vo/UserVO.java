package kr.co.creator.vo;

// 유저
public class UserVO {
	private String user_num;					// 유저번호
	private String email;						// 이메일
	private String user_password;				// 비밀번호
	private String user_name;					// 이름
	private String jumin;						// 주민등록번호
	private String phone;						// 전화번호
	private String addr;						// 주소
	private String user_chk_email;				// 이메일 수신 여부
	private String user_terms_of_service;		// 이용약관
	private String user_privacy_policy_agree;	// 개인정보처리동의	
	private String user_join_date;				// 가입일
	private String user_phone_key;				// 휴대폰인증
	private String cer_number;					// 인증번호
	private String manager_email;
	

	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	public String getCer_number() {
		return cer_number;
	}
	public void setCer_number(String cer_number) {
		this.cer_number = cer_number;
	}
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}//user_num
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}//email
	
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}//user_password
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}//user_name
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}//jumin

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}//phone
	
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}//addr
	
	public String getUser_chk_email() {
		return user_chk_email;
	}
	public void setUser_chk_email(String user_chk_email) {
		this.user_chk_email = user_chk_email;
	}//user_chk_email
	
	public String getUser_terms_of_service() {
		return user_terms_of_service;
	}
	public void setUser_terms_of_service(String user_terms_of_service) {
		this.user_terms_of_service = user_terms_of_service;
	}//user_terms_of_service
	
	public String getUser_privacy_policy_agree() {
		return user_privacy_policy_agree;
	}
	public void setUser_privacy_policy_agree(String user_privacy_policy_agree) {
		this.user_privacy_policy_agree = user_privacy_policy_agree;
	}//user_privacy_policy_agree
	
	public String getUser_join_date() {
		return user_join_date;
	}
	public void setUser_join_date(String user_join_date) {
		this.user_join_date = user_join_date;
	}//user_join_date
	
	public String getUser_phone_key() {
		return user_phone_key;
	}
	public void setUser_phone_key(String user_phone_key) {
		this.user_phone_key = user_phone_key;
	}//user_phone_key
}//class