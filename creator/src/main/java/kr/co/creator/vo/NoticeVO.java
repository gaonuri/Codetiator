package kr.co.creator.vo;

// 怨듭��궗�빆
public class NoticeVO {
	private String notice_num;			// 怨듭��궗�빆踰덊샇
	private String img;					// �궗吏�
	private String title;				// �젣紐�
	private String notice_contents;		// 怨듭��궗�빆�궡�슜
	private String notice_date;			// �벑濡앸궇吏�
	private String notice_type;			// 怨듭��궗�빆援щ텇
	
	public NoticeVO() {}	//constructor
	public NoticeVO(String notice_num, String img, String title, String notice_contents, String notice_date) {
		this.notice_num = notice_num;
		this.img = img;
		this.title = title;
		this.notice_contents = notice_contents;
		this.notice_date = notice_date;
	}//constructor
	
	public String getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(String notice_num) {
		this.notice_num = notice_num;
	}//notice_num
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}//img
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}//title
	
	public String getNotice_contents() {
		return notice_contents;
	}
	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}//notice_contents
	
	public String getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}//notice_date
	public String getNotice_type() {
		return notice_type;
	}
	public void setNotice_type(String notice_type) {
		this.notice_type = notice_type;
	}
}//class
