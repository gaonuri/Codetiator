package kr.co.creator.vo;

// 서류
public class DocumentVO {
	private String document_num;	// 서류번호
	private String busi_regi;		// 사업자등록증
	private String jumin_chobon;	// 주민등록초본
	private String cer_ingam;		// 인감증명서
	private String cer_budong;		// 부동산증명서
	private String cer_dong;		// 동산증명서
	private String cer_income;		// 소득금액증명원
	private String cer_vat;			// 부가가치세과세증명원
	private String cer_other;		// 기타증명서
	private String copy_id;			// 신분증사본
	private String copy_bankbook;	// 통장사본
	private String chk_select;		// 개인정보 선택적이용확인
	private String judge_status;	// 심사상태

	private String project_num;		// (참조)프로젝트번호
	
	
	public String getDocument_num() {
		return document_num;
	}
	public void setDocument_num(String document_num) {
		this.document_num = document_num;
	}//document_num
	
	public String getBusi_regi() {
		return busi_regi;
	}
	public void setBusi_regi(String busi_regi) {
		this.busi_regi = busi_regi;
	}//busi_regi
	
	public String getJumin_chobon() {
		return jumin_chobon;
	}
	public void setJumin_chobon(String jumin_chobon) {
		this.jumin_chobon = jumin_chobon;
	}//jumin_chobon
	
	public String getCer_ingam() {
		return cer_ingam;
	}
	public void setCer_ingam(String cer_ingam) {
		this.cer_ingam = cer_ingam;
	}//cer_ingam
	
	public String getCer_budong() {
		return cer_budong;
	}
	public void setCer_budong(String cer_budong) {
		this.cer_budong = cer_budong;
	}//cer_budong
	
	public String getCer_dong() {
		return cer_dong;
	}
	public void setCer_dong(String cer_dong) {
		this.cer_dong = cer_dong;
	}//cer_dong

	public String getCer_income() {
		return cer_income;
	}
	public void setCer_income(String cer_income) {
		this.cer_income = cer_income;
	}//cer_income
	
	public String getCer_vat() {
		return cer_vat;
	}
	public void setCer_vat(String cer_vat) {
		this.cer_vat = cer_vat;
	}//cer_vat
	
	public String getCer_other() {
		return cer_other;
	}
	public void setCer_other(String cer_other) {
		this.cer_other = cer_other;
	}//cer_other
	
	public String getCopy_id() {
		return copy_id;
	}
	public void setCopy_id(String copy_id) {
		this.copy_id = copy_id;
	}//copy_id
	
	public String getCopy_bankbook() {
		return copy_bankbook;
	}
	public void setCopy_bankbook(String copy_bankbook) {
		this.copy_bankbook = copy_bankbook;
	}//copy_bankbook
	
	public String getChk_select() {
		return chk_select;
	}
	public void setChk_select(String chk_select) {
		this.chk_select = chk_select;
	}//chk_select
	
	public String getJudge_status() {
		return judge_status;
	}
	public void setJudge_status(String judge_status) {
		this.judge_status = judge_status;
	}//judge_status
	
	
	//참조
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
}//class