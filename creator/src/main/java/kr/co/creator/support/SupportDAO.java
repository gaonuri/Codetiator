package kr.co.creator.support;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SupportDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void support() {
		//sqlSession.selectList("SupportMapper.");
	}
}//class