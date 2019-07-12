package kr.co.creator.loan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertMember(UserVO vo) {
		int count = 0;
		count = sqlSession.insert(
						"UserMapper.insertMember", vo);
		return count;
	}//로그인 시 접속이력 남는 sql문 하나 더
	
	public UserVO memberInfo(UserVO vo) {
		vo = sqlSession.selectOne("UserMapper.memberInfo", vo);
		return vo;
	}
	
	public int deleteMember(UserVO vo) {
		int count = 0;
		count = sqlSession.delete(
						"UserMapper.deleteMember", vo);
		return count;
	}
	
	public int userCheck(UserVO vo) {
		int count = 0;
		count = sqlSession.selectOne("UserMapper.userCheck", vo);
		return count;
	}
}
