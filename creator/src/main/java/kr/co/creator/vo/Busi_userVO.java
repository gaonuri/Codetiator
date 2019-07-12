package kr.co.creator.vo;

// 법인유저
public class Busi_userVO {
	private String busi_num;					// 법인 유저번호
	private String busi_resi_num;			// 사업자 등록번호
	private String busi_password;			// 사업자 비밀번호
	private String com_name;				// 업체명
	private String presen_name;				// 대표자명
	private String cor_num;					// 법인번호
	private String homepage;				// 홈페이지
	private String address;					// 주소
	private String pre_phone;				// 대표자번호
	private String fax_num;					// 팩스번호
	private String manager_name;			// 담당자명
	private String manager_birth;			// 담당자 생년월일
	private String manager_email;			// 담당자 이메일
	private String office_num;				// 사무실 번호
	private String manager_phone;			// 매니저 번호
	private String manager_fax;				// 매니저 팩스번호
	private String manager_task;			// 담당업무
	private String manager_rank;			// 직급
	private String manager_depart;			// 근무부서
	private String terms_of_service;		// 이용약관
	private String privacy_policy_agree;	// 개인정보처리동의
	private String join_date;				// 가입일
	
	public Busi_userVO() {}	//constructor
	public Busi_userVO(String busi_num, String busi_resi_num, String busi_password, String com_name, String presen_name, String cor_num, String homepage, String address, String pre_phone, String fax_num, String manager_name, String manager_birth, String manager_email, String office_num, String manager_phone, String manager_fax, String manager_task, String manager_rank, String manager_depart, String terms_of_service, String privacy_policy_agree, String join_date) {
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
		this.manager_fax = manager_fax;
		this.manager_task = manager_task;
		this.manager_rank = manager_rank;
		this.manager_depart = manager_depart;
		this.terms_of_service = terms_of_service;
		this.privacy_policy_agree = privacy_policy_agree;
		this.join_date = join_date;
	}//constructor
	
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}//busi_num
	
	public String getBusi_resi_num() {
		return busi_resi_num;
	}
	public void setBusi_resi_num(String busi_resi_num) {
		this.busi_resi_num = busi_resi_num;
	}//busi_resi_num
	
	public String getBusi_password() {
		return busi_password;
	}
	public void setBusi_password(String busi_password) {
		this.busi_password = busi_password;
	}//busi_password
	
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}//com_name
	
	public String getPresen_name() {
		return presen_name;
	}
	public void setPresen_name(String presen_name) {
		this.presen_name = presen_name;
	}//presen_name
	
	public String getCor_num() {
		return cor_num;
	}
	public void setCor_num(String cor_num) {
		this.cor_num = cor_num;
	}//cor_num

	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}//homepage
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}//address
	
	public String getPre_phone() {
		return pre_phone;
	}
	public void setPre_phone(String pre_phone) {
		this.pre_phone = pre_phone;
	}//pre_phone
	
	public String getFax_num() {
		return fax_num;
	}
	public void setFax_num(String fax_num) {
		this.fax_num = fax_num;
	}//fax_num
	
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}//manager_name
	
	public String getManager_birth() {
		return manager_birth;
	}
	public void setManager_birth(String manager_birth) {
		this.manager_birth = manager_birth;
	}//manager_birth
	
	public String getManager_email() {
		return manager_email;
	}
	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}//manager_email
	
	public String getOffice_num() {
		return office_num;
	}
	public void setOffice_num(String office_num) {
		this.office_num = office_num;
	}//office_num
	
	public String getManager_phone() {
		return manager_phone;
	}
	public void setManager_phone(String manager_phone) {
		this.manager_phone = manager_phone;
	}//manager_phone
	
	public String getManager_fax() {
		return manager_fax;
	}
	public void setManager_fax(String manager_fax) {
		this.manager_fax = manager_fax;
	}//manager_fax
	
	public String getManager_task() {
		return manager_task;
	}
	public void setManager_task(String manager_task) {
		this.manager_task = manager_task;
	}//manager_task
	
	public String getManager_rank() {
		return manager_rank;
	}
	public void setManager_rank(String manager_rank) {
		this.manager_rank = manager_rank;
	}//manager_rank
	
	public String getManager_depart() {
		return manager_depart;
	}
	public void setManager_depart(String manager_depart) {
		this.manager_depart = manager_depart;
	}//manager_depart
	
	public String getTerms_of_service() {
		return terms_of_service;
	}
	public void setTerms_of_service(String terms_of_service) {
		this.terms_of_service = terms_of_service;
	}//terms_of_service
	
	public String getPrivacy_policy_agree() {
		return privacy_policy_agree;
	}
	public void setPrivacy_policy_agree(String privacy_policy_agree) {
		this.privacy_policy_agree = privacy_policy_agree;
	}//privacy_policy_agree
	
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}//join_date
}//class