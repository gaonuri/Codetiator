package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;


	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = sqlSession.selectOne("MypageMapper.projectlist", proVO);
		return proVO;
	}

	public InvestVO invest_detail(InvestVO ivVO) {
		ivVO = sqlSession.selectOne("MypageMapper.investlist", ivVO);
		return ivVO;
	} 
}//class