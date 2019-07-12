package kr.co.creator.vo;

// 유저
public class UserVO {
	private String user_num;			// 유저번호
	private String email;				// 이메일
	private String user_password;		// 비밀번호
	private String user_name;			// 이름
	private String chk_receive_email;	// 이메일 수신여부
	private String jumin;				// 주민등록번호
	private String phone;				// 전화번호
	private String addr;				// 주소
	private String join_date;			// 가입일
	private String phone_key;			// 휴대폰인증
	private String login_time;			// 접속이력
	
	public UserVO() {}	//constructor
	public UserVO(String user_num, String email, String user_password, String user_name, String chk_receive_email, String jumin, String phone, String addr, String join_date, String phone_key, String login_time) {
		this.user_num = user_num;
		this.email = email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.chk_receive_email = chk_receive_email;
		this.jumin = jumin;
		this.phone = phone;
		this.addr = addr;
		this.join_date = join_date;
		this.phone_key = phone_key;
		this.login_time = login_time;
	}//constructor
	
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
	
	public String getChk_receive_email() {
		return chk_receive_email;
	}
	public void setChk_receive_email(String chk_receive_email) {
		this.chk_receive_email = chk_receive_email;
	}//chk_receive_email
	
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
	
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}//join_date
	
	public String getPhone_key() {
		return phone_key;
	}
	public void setPhone_key(String phone_key) {
		this.phone_key = phone_key;
	}//phone_key
	
	public String getLogin_time() {
		return login_time;
	}
	public void setLogin_time(String login_time) {
		this.login_time = login_time;
	}//login_time
}//class