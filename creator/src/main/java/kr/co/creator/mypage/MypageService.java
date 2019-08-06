package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<MypageVO> invest_detail(MemberVO userVO) {
		List<MypageVO> invest = null;
		invest = dao.invest_detail(userVO);
		return invest;
	}
	
	public List<ProjectVO> loan_list(MemberVO userVO) {
		List<ProjectVO> loan = null;
		loan = dao.loan_list(userVO);
		return loan;
	}

	public AccountVO account(MemberVO userVO) {
		AccountVO accVO = null;
		accVO = dao.account(userVO);
		return accVO;
	}
	
	public InOutVO inout(MemberVO userVO) {
		InOutVO ioVO = null;
		ioVO = (InOutVO) dao.inout(userVO);
		return ioVO;
	}
	
	public int myPageModifyU(MemberVO vo) {
		int cnt = 0;
		cnt = dao.myPageModifyU(vo);
		return cnt; 
	}//myPageModifyU	
	
	public int myPageModifyB(MemberVO vo) {
		int cnt = 0;
		cnt = dao.myPageModifyB(vo);
		return cnt; 
	}//myPageModifyB	

	public UserVO user(MemberVO userVO) {
		UserVO useVO = null;
		useVO = (UserVO) dao.user(userVO);
		return useVO;
	}
	
	public Busi_userVO busi(MemberVO userVO) {
		Busi_userVO busiVO = null;
		busiVO = (Busi_userVO) dao.busi(userVO);
		return busiVO;
	}
	
	public int emailcert(UserVO vo) {
		System.out.println(vo);
		int cnt = 0;
		cnt = dao.emailcert(vo);
		return cnt; 
	}//findPwdChk

	public int userDataUpdate(MemberVO vo) {
		int cnt = 0;
		cnt = dao.userDataUpdate(vo);
		return cnt; 
	}
	
	public int userDataUpdate1(MemberVO vo) {
		int cnt1 = 0;
		cnt1 = dao.userDataUpdate1(vo);
		return cnt1; 
	}


	
}//class


