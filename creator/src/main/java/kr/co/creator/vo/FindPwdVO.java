package kr.co.creator.vo;



public class FindPwdVO {
	private String user_num;					// 유저번호
	private String email;						// 이메일
	private String busi_num;					// 법인 유저번호
	private String manager_email;				// 담당자 이메일
	private String user_password;
	private String user_name;
	private String newPassword;
	
	public FindPwdVO() {}	//constructor
	public FindPwdVO(String user_num, String email, String busi_num, String manager_email, String user_password, String user_name, String newPassword) {
		this.user_num = user_num;
		this.email = email;
		this.busi_num = busi_num;
		this.manager_email = manager_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.newPassword = newPassword;
	}//constructor
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
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
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	
}//class





