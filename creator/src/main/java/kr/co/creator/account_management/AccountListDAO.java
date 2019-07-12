package kr.co.creator.account_management;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountListDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void account_list() {
		//sqlSession.selectList("AccountListMapper.");
	}
}//class