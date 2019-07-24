package kr.co.creator.member_management;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberManagementDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void user_mgt() {
		//sqlSession.selectList("MemberManagementMapper.");
	}//investor_member_mgn
}//class