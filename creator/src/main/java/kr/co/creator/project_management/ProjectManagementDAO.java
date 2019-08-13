package kr.co.creator.project_management;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Repository
public class ProjectManagementDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("ProjectManagementMapper.investList");
		
		return list;
	}//invest_list

	public ProjectVO project_calc() {
		ProjectVO proCalcVO = null;
		proCalcVO = sqlSession.selectOne("ProjectManagementMapper.project_calc");
		
		return proCalcVO;
	}//project_calc

	public InvestVO invest_calc() {
		InvestVO inVO = null;
		inVO = sqlSession.selectOne("ProjectManagementMapper.invest_calc");
		
		return inVO;
	}//invest_calc
	
	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = sqlSession.selectOne("ProjectManagementMapper.projectDetail", proVO);
		
		return proVO;
	}//project_detail
}//class