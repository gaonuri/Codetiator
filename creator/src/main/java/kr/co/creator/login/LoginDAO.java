package kr.co.creator.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.MemberListVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.ProjectVO;

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

	public List<MemberListVO> user_list() {
		List<MemberListVO> list = null;
		list = sqlSession.selectList("LoginMapper.userList");
		return list;
	}//user_list
	
	public List<MemberListVO> busi_user_list() {
		List<MemberListVO> list = null;
		list = sqlSession.selectList("LoginMapper.busiUserList");
		return list;
	}//busi_user_list
	
}//class