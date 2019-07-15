package kr.co.creator.invest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.ProjectVO;

@Repository
public class InvestDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void invest() {
		//sqlSession.selectList("InvestMapper.");
	}

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investList");
		
		return list;
	}//invest_list

	public ProjectVO invest_detail(ProjectVO vo) {
		vo = sqlSession.selectOne("InvestMapper.investDetail", vo);
		
		return vo;
	}
}//class