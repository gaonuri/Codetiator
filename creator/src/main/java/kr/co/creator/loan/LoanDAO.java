package kr.co.creator.loan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoanDAO {
	
	@Autowired
	SqlSession sqlSession;

	public void loan() {
		//sqlSession.selectList("LoanMapper.");
	}
}//class