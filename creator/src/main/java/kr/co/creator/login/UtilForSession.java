package kr.co.creator.login;

import javax.servlet.http.HttpSession;

import kr.co.creator.vo.MemberVO;

public class UtilForSession {

	public static boolean chkSession(HttpSession session) {
		MemberVO sessionVO = (MemberVO) session.getAttribute("memVO");
		boolean chkSessionResult = true;
		if(sessionVO == null || sessionVO.getUser_num().equals("")) {
			chkSessionResult = false;
		}
		return chkSessionResult;
	}//chkSession

}//class
