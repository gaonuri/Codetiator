package kr.co.creator.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.HistoryVO;
import kr.co.creator.vo.MemberListVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;
	
	public int findPwdChk(FindPwdVO vo) {
		System.out.println(vo.getEmail());
		int cnt = 0;
		cnt = loginDAO.findPwdChk(vo);
		return cnt; 
	}//findPwdChk
	
	public int updatePwd(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.updatePwd(vo);
		return cnt;
	}//updatePwd

	public List<MemberListVO> user_list() {
		List<MemberListVO> list = null;
		list = loginDAO.user_list();
		return list;
	}//user_list
	
	public List<MemberListVO> busi_user_list() {
		List<MemberListVO> list = null;
		list = loginDAO.busi_user_list();
		return list;
	}//busi_user_list

	public int insertNumber(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.insertNumber(vo);
		return cnt;
	}//insertNumber

	public int busifindChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.busifindChk(vo);
		return cnt;
	}//busifindChk

	public int userfindChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.userfindChk(vo);
		return cnt;
	}
	
	public int CheckCerNumber(Busi_userVO vo) {
		int cnt = 0;
		cnt = loginDAO.CheckCerNumber(vo);
		return cnt;
	}//CheckCerNumber

	public List<HistoryVO> historyIn(HistoryVO hvo) {
		List<HistoryVO> list = null;
		list = loginDAO.historyIn(hvo);
		return list;
	}//historyIn
	
	public List<HistoryVO> historyOut(HistoryVO hvo) {
		List<HistoryVO> list = null;
		list = loginDAO.historyOut(hvo);
		return list;
	}//historyOut

	public int insertUserNumber(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.insertUserNumber(vo);
		return cnt;
	}//insertUserNumber

	public int CheckCerUserNumber(FindPwdVO vo) {
		int cnt = 0;
		System.out.println("88888888888888888888888888888888888888888888888888888888888 vo.cer_number : " + vo.getCer_number());
		cnt = loginDAO.CheckCerUserNumber(vo);
		return cnt;
	}//CheckCerUserNumber

}//class
