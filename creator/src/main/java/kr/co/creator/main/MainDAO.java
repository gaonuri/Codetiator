package kr.co.creator.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.ProjectVO;

@Repository
public class MainDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<ProjectVO> project_list1() {
		List<ProjectVO> list1 = sqlSession.selectList("MainMapper.projectList1");
		
		return list1;
	}//project_list1

	public List<ProjectVO> project_list2() {
		List<ProjectVO> list2 = sqlSession.selectList("MainMapper.projectList2");
		
		return list2;
	}//project_list2
	
	public List<ProjectVO> project_list3() {
		List<ProjectVO> list3 = sqlSession.selectList("MainMapper.projectList3");
		
		return list3;
	}//project_list3
}//class