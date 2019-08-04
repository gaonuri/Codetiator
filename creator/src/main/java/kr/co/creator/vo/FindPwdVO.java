package kr.co.creator.vo;

// 비밀번호찾기
public class FindPwdVO {
	private String user_num;		// 유저번호
	private String email;			// 이메일
	private String busi_num;		// 법인 유저번호
	private String manager_email;	// 담당자 이메일
	private String user_password;	// 유저비밀번호
	private String user_name;		// 유저이름
	private String newPassword;		// 바꿀비밀번호
	
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}//user_name
	
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}//user_password
	
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
	}//emai
	
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}//busi_num
	
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}//manager_email
	
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}//newPassword
}//class





