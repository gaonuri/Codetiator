package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<MypageVO> invest_detail(MemberVO userVO) {
		List<MypageVO> invest = null;
		invest = sqlSession.selectList("MypageMapper.InvestList", userVO);
		return invest;
	}

	public List<ProjectVO> loan_list(MemberVO userVO) {
		List<ProjectVO> loan = null;
		loan = sqlSession.selectList("MypageMapper.loanlist", userVO);
		return loan;
	} 
	
	public AccountVO account(MemberVO userVO) {
		AccountVO accVO = null;
		accVO = sqlSession.selectOne("MypageMapper.Account", userVO);
		return accVO;
	}
	
	public InOutVO inout(MemberVO userVO) {
		InOutVO ioVO = null;
		ioVO = sqlSession.selectOne("MypageMapper.Inout", userVO);
		return ioVO;
	}
	
	public int myPageModifyU(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModifyU", vo);
		return cnt;
	}//myPageModifyU
	
	public int myPageModifyB(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModifyB", vo);
		return cnt;
	}//myPageModifyB

	public UserVO user(MemberVO userVO) {
		UserVO useVO = null;
		useVO = sqlSession.selectOne("MypageMapper.User", userVO);
		return useVO;
	}

	public int emailcert(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//findPwdChk


	
}//class


