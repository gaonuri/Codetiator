package kr.co.creator.project_management;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProjectManagementDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void project_current_list() {
		//sqlSession.selectList("ProjectManagementMapper.");
	}
}//class