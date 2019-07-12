package kr.co.creator.main;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void main() {
		//sqlSession.selectList("MainMapper.");
	}
}//class