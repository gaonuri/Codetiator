package kr.co.creator.vo;

// 게런티
public class GuaranteeVO {
	private String guarantee_num;			// 담보번호
	private String guarantee_type;			// 담보유형
	private String guarantee_img;			// 담보문사진경로
	private String guarantee_name;			// 담보이름
	private String connoisseur;				// 감정가
	private String area;					// 면적
	private String map;						// 지도
	private String location;				// 소재지
	private String scale;					// 규모
	private String comple_year;				// 준공년도
	private String quote;					// 시세
	private String code;					// 담보분류
	
	private String loan_num;				// (참조)대출 번호
	
	public GuaranteeVO() {}	//constructor
	public GuaranteeVO(String guarantee_num, String guarantee_type, String guarantee_img, String guarantee_name, String connoisseur, String area, String map, String location, String scale, String comple_year, String quote, String code, String grade, String more_information, String en_date, String rate, String loan_num) {
		this.guarantee_num = guarantee_num;
		this.guarantee_type = guarantee_type;
		this.guarantee_img = guarantee_img;
		this.guarantee_name = guarantee_name;
		this.connoisseur = connoisseur;
		this.area = area;
		this.map = map;
		this.location = location;
		this.scale = scale;
		this.comple_year = comple_year;
		this.quote = quote;
		this.code = code;
		
		this.loan_num = loan_num;
	}//constructor
	
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
	
	public String getGuarantee_img() {
		return guarantee_img;
	}
	public void setGuarantee_img(String guarantee_img) {
		this.guarantee_img = guarantee_img;
	}//guarantee_img
	
	public String getGuarantee_name() {
		return guarantee_name;
	}
	public void setGuarantee_name(String guarantee_name) {
		this.guarantee_name = guarantee_name;
	}//guarantee_name
	
	public String getConnoisseur() {
		return connoisseur;
	}
	public void setConnoisseur(String connoisseur) {
		this.connoisseur = connoisseur;
	}//connoisseur
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}//area
	
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
	
	public String getLoan_num() {
		return loan_num;
	}
	public void setLoan_num(String loan_num) {
		this.loan_num = loan_num;
	}//loan_num
}//class