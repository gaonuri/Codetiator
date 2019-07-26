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

	public List<MypageVO> invest_detail() {
		List<MypageVO> invest = null;
		System.out.println("DAO 2222222222222222222222222222222 : ");
		invest = sqlSession.selectList("MypageMapper.InvestList");
		System.out.println("DAO 3333333333333333333333333333333 : ");
		return invest;
	} 
	
	public int myPageModify(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModify", vo);
		return cnt;
	}//myPageModify
	
}//class



