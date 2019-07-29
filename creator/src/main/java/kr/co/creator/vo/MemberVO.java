package kr.co.creator.vo;

// 계좌
public class MemberVO {
	private String user_num;					// 유저번호
	private String email;						// 이메일
	private String user_name;					// 이름
	private String busi_num;					// 법인 유저번호
	private String busi_resi_num;				// 사업자 등록번호
	private String manager_name;				// 담당자명
	private String user_password;				// 비밀번호
	private String busi_password;				// 사업자 비밀번호
	private String manager_email;
	private String i;							// 모르는 변수
	
	public MemberVO() {}	//constructor
	public MemberVO(String user_num, String email, String user_name, String busi_num, String busi_resi_num, 
					String manager_name, String user_password, String busi_password, String manager_email) {
		this.user_num = user_num;
		this.email = email;
		this.user_name = user_name;
		this.busi_num = busi_num;
		this.busi_resi_num = busi_resi_num;
		this.manager_name = manager_name;
		this.user_password = user_password;
		this.busi_password = busi_password;
		this.manager_email = manager_email;
	}//constructor
	
	
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getBusi_password() {
		return busi_password;
	}
	public void setBusi_password(String busi_password) {
		this.busi_password = busi_password;
	}
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}
	public String getBusi_resi_num() {
		return busi_resi_num;
	}
	public void setBusi_resi_num(String busi_resi_num) {
		this.busi_resi_num = busi_resi_num;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	
	
	
}//class




