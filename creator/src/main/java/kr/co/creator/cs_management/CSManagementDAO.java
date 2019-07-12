package kr.co.creator.cs_management;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CSManagementDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void notice_mgn() {
		//sqlSession.selectList("CSManagementMapper.");
	}
}//class