package kr.co.creator.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.FindPwdVO;

@Repository
public class LoginDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int findPwdChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//findPwdChk
	
	public int updatePwd(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.update("LoginMapper.updatePwd", vo);
		return cnt;
	}//updatePwd

//	public int selectName(FindPwdVO vo) {
//		int cnt = 0;
//		cnt = sqlSession.selectOne("LoginMapper.selectName", vo);
//		return cnt;
//	}
	
	
}//class