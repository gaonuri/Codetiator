package kr.co.creator.vo;

// 본인인증
public class CertVO {
	private String cert_key;		// 인증번호
	private String cert_time;		// 인증시간
	
	private String user_num;		// (참조)유저번호
	private String busi_num;		// (참조)법인유저번호
	
	
	public String getCert_key() {
		return cert_key;
	}
	public void setCert_key(String cert_key) {
		this.cert_key = cert_key;
	}//cert_key
	
	public String getCert_time() {
		return cert_time;
	}
	public void setCert_time(String cert_time) {
		this.cert_time = cert_time;
	}//cert_time
	
	
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
