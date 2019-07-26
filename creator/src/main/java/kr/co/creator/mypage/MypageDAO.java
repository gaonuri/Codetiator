package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.FindPwdVO;
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
	
	public int myPageModify(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModify", vo);
		return cnt;
	}//myPageModify
	
}//class



