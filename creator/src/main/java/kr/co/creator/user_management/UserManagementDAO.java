package kr.co.creator.user_management;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserManagementDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void investor_member_mgn() {
		//sqlSession.selectList("UserManagementMapper.");
	}//investor_member_mgn
}//class