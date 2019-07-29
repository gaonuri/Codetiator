package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.FindPwdVO;
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
	
	public List<MypageVO> depo_log(MemberVO userVO) {
		List<MypageVO> depo = null;
		depo = dao.depolog(userVO);
		return depo;
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


}//class
