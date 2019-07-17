package kr.co.creator.vo;

// 1:1문의
public class NoteVO {
	private String note_num;				// 문의번호
	private String note_type;				// 타입(보낸문의받은문의)
	private String note_date;				// 수신일
	private String chk_note_reception;		// 수신확인여부
	private String note_contents;			// 문의내용
	private String send_user_num;			// 문의자번호
	private String send_nickname;			// 문의자닉네임
	private String note_title;				// 제목
	private String status;					// 처리상태
	private String file_path;				// 파일경로
	
	public NoteVO() {}	//constructor
	public NoteVO(String note_num, String note_type, String note_date, String chk_note_reception, String note_contents, String send_user_num, String send_nickname, String note_title, String status, String file_path) {
		this.note_num = note_num;
		this.note_type = note_type;
		this.note_date = note_date;
		this.chk_note_reception = chk_note_reception;
		this.note_contents = note_contents;
		this.send_user_num = send_user_num;
		this.send_nickname = send_nickname;
		this.note_title = note_title;
		this.status = status;
		this.file_path = file_path;
	}//constructor
	
	public String getNote_num() {
		return note_num;
	}
	public void setNote_num(String note_num) {
		this.note_num = note_num;
	}//note_num
	
	public String getNote_type() {
		return note_type;
	}
	public void setNote_type(String note_type) {
		this.note_type = note_type;
	}//note_type
	
	public String getNote_date() {
		return note_date;
	}
	public void setNote_date(String note_date) {
		this.note_date = note_date;
	}//note_date
	
	public String getChk_note_reception() {
		return chk_note_reception;
	}
	public void setChk_note_reception(String chk_note_reception) {
		this.chk_note_reception = chk_note_reception;
	}//chk_note_reception
	
	public String getNote_contents() {
		return note_contents;
	}
	public void setNote_contents(String note_contents) {
		this.note_contents = note_contents;
	}//note_contents
	
	public String getSend_user_num() {
		return send_user_num;
	}
	public void setSend_user_num(String send_user_num) {
		this.send_user_num = send_user_num;
	}//send_user_num

	public String getsend_nickname() {
		return send_nickname;
	}
	public void setsend_nickname(String send_nickname) {
		this.send_nickname = send_nickname;
	}//send_nickname
	
	public String getNote_title() {
		return note_title;
	}
	public void setNote_title(String note_title) {
		this.note_title = note_title;
	}//note_title
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}//status
	
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}//file_path
}//class