package kr.co.creator.vo;

import org.springframework.web.multipart.MultipartFile;

// 게런티
public class GuaranteeVO {
	private String guarantee_num;			// 담보번호
	private String guarantee_type;			// 담보유형(부동산, 동산)
	private String object_type;				// 물건유형(아파트, 연립주택)
	private MultipartFile guarantee_img;
	private String guarantee_img_path;			// 담보문사진경로
	private String debtor_type;				// 차주유형(개인, 법인)
	private String business_type;			// 차주업종(직종)
	private String guarantee_name;			// 담보이름
	private String supply_area;				// 공급면적
	private String exclusive_area;			// 전용면적
	private String map;						// 지도
	private String location;				// 소재지
	private String comple_year;				// 준공년도
	private String connoisseur;				// 외부감정가
	private String judge_status;			// 심사상태
	private MultipartFile reference_file1;			// 참고파일1
	private MultipartFile reference_file2;			// 참고파일2
	private MultipartFile reference_file3;			// 참고파일3
	private String reference_file1_path;			// 참고파일1
	private String reference_file2_path;			// 참고파일2
	private String reference_file3_path;			// 참고파일3
	private String scale;					// 규모
	private String area;					// 면적
	private String quote;					// 시세
	private String code;					// 담보분류
	
	private String project_num;				// (참조)프로젝트번호
	

	public String getGuarantee_num() {
		return guarantee_num;
	}
	public void setGuarantee_num(String guarantee_num) {
		this.guarantee_num = guarantee_num;
	}//guarantee_num
	
	public String getGuarantee_type() {
		return guarantee_type;
	}
	public void setGuarantee_type(String guarantee_type) {
		this.guarantee_type = guarantee_type;
	}//guarantee_type
	
	public String getGuarantee_name() {
		return guarantee_name;
	}
	public void setGuarantee_name(String guarantee_name) {
		this.guarantee_name = guarantee_name;
	}//guarantee_name
	
	public String getDebtor_type() {
		return debtor_type;
	}
	public void setDebtor_type(String debtor_type) {
		this.debtor_type = debtor_type;
	}//debtor_type
	
	public String getBusiness_type() {
		return business_type;
	}
	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}//business_type
	
	public String getObject_type() {
		return object_type;
	}
	public void setObject_type(String object_type) {
		this.object_type = object_type;
	}//object_type
	
	public String getConnoisseur() {
		return connoisseur;
	}
	public void setConnoisseur(String connoisseur) {
		this.connoisseur = connoisseur;
	}//connoisseur
	
	public String getExclusive_area() {
		return exclusive_area;
	}
	public void setExclusive_area(String exclusive_area) {
		this.exclusive_area = exclusive_area;
	}//exclusive_area
	
	public String getSupply_area() {
		return supply_area;
	}
	public void setSupply_area(String supply_area) {
		this.supply_area = supply_area;
	}//supply_area
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}//area
	
	public String getJudge_status() {
		return judge_status;
	}
	public void setJudge_status(String judge_status) {
		this.judge_status = judge_status;
	}//judge_status
	
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}//map

	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}//location
	
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}//scale
	
	public String getComple_year() {
		return comple_year;
	}
	public void setComple_year(String comple_year) {
		this.comple_year = comple_year;
	}//comple_year
	
	public String getQuote() {
		return quote;
	}
	public void setQuote(String quote) {
		this.quote = quote;
	}//quote
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}//code
	
	//참조
	public String getProject_num() {
		return project_num;
	}
	public void setProject_num(String project_num) {
		this.project_num = project_num;
	}//project_num
	public MultipartFile getGuarantee_img() {
		return guarantee_img;
	}
	public void setGuarantee_img(MultipartFile guarantee_img) {
		this.guarantee_img = guarantee_img;
	}
	public String getGuarantee_img_path() {
		return guarantee_img_path;
	}
	public void setGuarantee_img_path(String guarantee_img_path) {
		this.guarantee_img_path = guarantee_img_path;
	}
	public MultipartFile getReference_file1() {
		return reference_file1;
	}
	public void setReference_file1(MultipartFile reference_file1) {
		this.reference_file1 = reference_file1;
	}
	public MultipartFile getReference_file2() {
		return reference_file2;
	}
	public void setReference_file2(MultipartFile reference_file2) {
		this.reference_file2 = reference_file2;
	}
	public MultipartFile getReference_file3() {
		return reference_file3;
	}
	public void setReference_file3(MultipartFile reference_file3) {
		this.reference_file3 = reference_file3;
	}
	public String getReference_file1_path() {
		return reference_file1_path;
	}
	public void setReference_file1_path(String reference_file1_path) {
		this.reference_file1_path = reference_file1_path;
	}
	public String getReference_file2_path() {
		return reference_file2_path;
	}
	public void setReference_file2_path(String reference_file2_path) {
		this.reference_file2_path = reference_file2_path;
	}
	public String getReference_file3_path() {
		return reference_file3_path;
	}
	public void setReference_file3_path(String reference_file3_path) {
		this.reference_file3_path = reference_file3_path;
	}
}//class