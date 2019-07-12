package kr.co.creator.invest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InvestDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void invest() {
		//sqlSession.selectList("InvestMapper.");
	}
}//class