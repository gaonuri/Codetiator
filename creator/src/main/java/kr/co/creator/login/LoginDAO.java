package kr.co.creator.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void login() {
		//sqlSession.selectList("LoginMapper");
	}
}//class