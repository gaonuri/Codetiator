package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;

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

	public AccountVO account(MemberVO userVO,AccountVO accVO) {
		accVO = dao.account(userVO, accVO);
		return accVO;
	}
	
	public InOutVO inout(MemberVO userVO, InOutVO ioVO) {
		ioVO = (InOutVO) dao.inout(userVO, ioVO);
		return ioVO;
	}
	
	public int myPageModify(MemberVO vo) {
		int cnt = 0;
		cnt = dao.myPageModify(vo);
		return cnt; 
	}//MemberVO	




}//class
