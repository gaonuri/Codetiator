package kr.co.creator.vo;

public class MemberVO {
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
	private String busi_num;					// 법인 유저번호
	private String busi_resi_num;				// 사업자 등록번호
	private String manager_name;				// 담당자명
	private String busi_password;				// 사업자 비밀번호
	private String com_name;					// 업체명
	private String presen_name;					// 대표자명
	private String cor_num;						// 법인번호
	private String homepage;					// 홈페이지
	private String address;						// 주소
	private String pre_phone;					// 대표자번호
	private String fax_num;						// 팩스번호
	private String manager_birth;				// 담당자 생년월일
	private String manager_email;				// 담당자 이메일
	private String office_num;					// 사무실 번호
	private String manager_phone;				// 매니저 번호
	private String manager_fax_num;				// 매니저 팩스번호
	private String manager_task;				// 담당업무
	private String manager_rank;				// 직급
	private String manager_depart;				// 근무부서
	private String busi_chk_email;				// 이메일 수신 여부
	private String busi_terms_of_service;		// 이용약관
	private String busi_privacy_policy_agree;	// 개인정보처리동의
	private String busi_join_date;				// 가입일
	private String busi_phone_key;				// 휴대폰 인증
	private String i;							// 모르는 변수
	
	public MemberVO() {}	//constructor
	public MemberVO(String user_num, String email, String user_password, String user_name, String jumin, 
			String phone, String addr, String user_chk_email, String user_terms_of_service, String user_privacy_policy_agree, 
			String user_join_date, String user_phone_key, String busi_num, String busi_resi_num, String busi_password, 
			String com_name, String presen_name, String cor_num, String homepage, String address, String pre_phone, String fax_num, 
			String manager_name, String manager_birth, String manager_email, String office_num, String manager_phone, 
			String manager_fax_num, String manager_task, String manager_rank, String manager_depart, String busi_chk_email, 
			String busi_terms_of_service, String busi_privacy_policy_agree, String busi_join_date, String busi_phone_key) {
		this.user_num = user_num;
		this.email = email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.jumin = jumin;
		this.phone = phone;
		this.addr = addr;
		this.user_chk_email = user_chk_email;
		this.user_terms_of_service = user_terms_of_service;
		this.user_privacy_policy_agree = user_privacy_policy_agree;
		this.user_join_date = user_join_date;
		this.user_phone_key = user_phone_key;
		this.busi_num = busi_num;
		this.busi_resi_num = busi_resi_num;
		this.busi_password = busi_password;
		this.com_name = com_name;
		this.presen_name = presen_name;
		this.cor_num = cor_num;
		this.homepage = homepage;
		this.address = address;
		this.pre_phone = pre_phone;
		this.fax_num = fax_num;
		this.manager_name = manager_name;
		this.manager_birth = manager_birth;
		this.manager_email = manager_email;
		this.office_num = office_num;
		this.manager_phone = manager_phone;
		this.manager_fax_num = manager_fax_num;
		this.manager_task = manager_task;
		this.manager_rank = manager_rank;
		this.manager_depart = manager_depart;
		this.busi_chk_email = busi_chk_email;
		this.busi_terms_of_service = busi_terms_of_service;
		this.busi_privacy_policy_agree = busi_privacy_policy_agree;
		this.busi_join_date = busi_join_date;
		this.busi_phone_key = busi_phone_key;
	}//constructor
	
	
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
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getJumin() {
		return jumin;
	}
	public void setJumin(String jumin) {
		this.jumin = jumin;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getUser_chk_email() {
		return user_chk_email;
	}
	public void setUser_chk_email(String user_chk_email) {
		this.user_chk_email = user_chk_email;
	}
	public String getUser_terms_of_service() {
		return user_terms_of_service;
	}
	public void setUser_terms_of_service(String user_terms_of_service) {
		this.user_terms_of_service = user_terms_of_service;
	}
	public String getUser_privacy_policy_agree() {
		return user_privacy_policy_agree;
	}
	public void setUser_privacy_policy_agree(String user_privacy_policy_agree) {
		this.user_privacy_policy_agree = user_privacy_policy_agree;
	}
	public String getUser_join_date() {
		return user_join_date;
	}
	public void setUser_join_date(String user_join_date) {
		this.user_join_date = user_join_date;
	}
	public String getUser_phone_key() {
		return user_phone_key;
	}
	public void setUser_phone_key(String user_phone_key) {
		this.user_phone_key = user_phone_key;
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
	public String getBusi_password() {
		return busi_password;
	}
	public void setBusi_password(String busi_password) {
		this.busi_password = busi_password;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getPresen_name() {
		return presen_name;
	}
	public void setPresen_name(String presen_name) {
		this.presen_name = presen_name;
	}
	public String getCor_num() {
		return cor_num;
	}
	public void setCor_num(String cor_num) {
		this.cor_num = cor_num;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPre_phone() {
		return pre_phone;
	}
	public void setPre_phone(String pre_phone) {
		this.pre_phone = pre_phone;
	}
	public String getFax_num() {
		return fax_num;
	}
	public void setFax_num(String fax_num) {
		this.fax_num = fax_num;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_birth() {
		return manager_birth;
	}
	public void setManager_birth(String manager_birth) {
		this.manager_birth = manager_birth;
	}
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}
	public String getOffice_num() {
		return office_num;
	}
	public void setOffice_num(String office_num) {
		this.office_num = office_num;
	}
	public String getManager_phone() {
		return manager_phone;
	}
	public void setManager_phone(String manager_phone) {
		this.manager_phone = manager_phone;
	}
	public String getManager_fax_num() {
		return manager_fax_num;
	}
	public void setManager_fax_num(String manager_fax_num) {
		this.manager_fax_num = manager_fax_num;
	}
	public String getManager_task() {
		return manager_task;
	}
	public void setManager_task(String manager_task) {
		this.manager_task = manager_task;
	}
	public String getManager_rank() {
		return manager_rank;
	}
	public void setManager_rank(String manager_rank) {
		this.manager_rank = manager_rank;
	}
	public String getManager_depart() {
		return manager_depart;
	}
	public void setManager_depart(String manager_depart) {
		this.manager_depart = manager_depart;
	}
	public String getBusi_chk_email() {
		return busi_chk_email;
	}
	public void setBusi_chk_email(String busi_chk_email) {
		this.busi_chk_email = busi_chk_email;
	}
	public String getBusi_terms_of_service() {
		return busi_terms_of_service;
	}
	public void setBusi_terms_of_service(String busi_terms_of_service) {
		this.busi_terms_of_service = busi_terms_of_service;
	}
	public String getBusi_privacy_policy_agree() {
		return busi_privacy_policy_agree;
	}
	public void setBusi_privacy_policy_agree(String busi_privacy_policy_agree) {
		this.busi_privacy_policy_agree = busi_privacy_policy_agree;
	}
	public String getBusi_join_date() {
		return busi_join_date;
	}
	public void setBusi_join_date(String busi_join_date) {
		this.busi_join_date = busi_join_date;
	}
	public String getBusi_phone_key() {
		return busi_phone_key;
	}
	public void setBusi_phone_key(String busi_phone_key) {
		this.busi_phone_key = busi_phone_key;
	}
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	
	
	
	
	
}//class




