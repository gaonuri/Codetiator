package kr.co.creator.vo;

import org.springframework.web.multipart.MultipartFile;

public class DocumentVO2 {

	private MultipartFile copy_id;
	private MultipartFile copy_bankbook;
	private MultipartFile busi_regi;
	private MultipartFile jumin_chobon;
	private MultipartFile cer_ingam;
	private MultipartFile cer_budong;
	private MultipartFile cer_dong;
	private MultipartFile cer_income;
	private MultipartFile cer_vat;
	private MultipartFile cer_other;

	public MultipartFile getCopy_id() {
		return copy_id;
	}
	public void setCopy_id(MultipartFile copy_id) {
		this.copy_id = copy_id;
	}
	public MultipartFile getCopy_bankbook() {
		return copy_bankbook;
	}
	public void setCopy_bankbook(MultipartFile copy_bankbook) {
		this.copy_bankbook = copy_bankbook;
	}
	public MultipartFile getBusi_regi() {
		return busi_regi;
	}
	public void setBusi_regi(MultipartFile busi_regi) {
		this.busi_regi = busi_regi;
	}
	public MultipartFile getJumin_chobon() {
		return jumin_chobon;
	}
	public void setJumin_chobon(MultipartFile jumin_chobon) {
		this.jumin_chobon = jumin_chobon;
	}
	public MultipartFile getCer_ingam() {
		return cer_ingam;
	}
	public void setCer_ingam(MultipartFile cer_ingam) {
		this.cer_ingam = cer_ingam;
	}
	public MultipartFile getCer_budong() {
		return cer_budong;
	}
	public void setCer_budong(MultipartFile cer_budong) {
		this.cer_budong = cer_budong;
	}
	public MultipartFile getCer_dong() {
		return cer_dong;
	}
	public void setCer_dong(MultipartFile cer_dong) {
		this.cer_dong = cer_dong;
	}
	public MultipartFile getCer_income() {
		return cer_income;
	}
	public void setCer_income(MultipartFile cer_income) {
		this.cer_income = cer_income;
	}
	public MultipartFile getCer_vat() {
		return cer_vat;
	}
	public void setCer_vat(MultipartFile cer_vat) {
		this.cer_vat = cer_vat;
	}
	public MultipartFile getCer_other() {
		return cer_other;
	}
	public void setCer_other(MultipartFile cer_other) {
		this.cer_other = cer_other;
	}

}//class
