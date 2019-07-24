package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<MypageVO> invest_detail(MypageVO userVO) {
		List<MypageVO> invest = null;
		invest = sqlSession.selectOne("MypageMapper.investlist", userVO);
		return invest;
	} 
}//class