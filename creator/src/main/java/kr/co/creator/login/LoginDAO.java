package kr.co.creator.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.UserVO;

@Repository
public class LoginDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int findPwdChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//findPwdChk
	
}//class