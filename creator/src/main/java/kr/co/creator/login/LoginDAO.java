package kr.co.creator.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.HistoryVO;
import kr.co.creator.vo.MemberListVO;
import kr.co.creator.vo.MemberVO;
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

	public int insertNumber(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.insert("LoginMapper.insertNumber", vo);
		return cnt;
	}//insertNumber
	
	public int insertNumber1(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.insert("LoginMapper.insertNumber1", vo);
		return cnt;
	}//insertNumber

	public int busifindChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.busifindChk", vo);
		return cnt;
	}//busifindChk

	public int userFindChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//userFindChk
	
	public int CheckCerNumber(Busi_userVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.CheckCerNumber", vo);
		return cnt;
	}//CheckCerNumber
	
	public int CheckCerNumber1(UserVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.CheckCerNumber1", vo);
		return cnt;
	}//CheckCerNumber	
	
	public List<HistoryVO> historyIn(HistoryVO hvo) {
		List<HistoryVO> list = null;
		list = sqlSession.selectList("LoginMapper.historyIn", hvo);
		return list;
	}//historyIn
	
	public List<HistoryVO> historyOut(HistoryVO hvo) {
		List<HistoryVO> list = null;
		list = sqlSession.selectList("LoginMapper.historyOut", hvo);
		return list;
	}//historyOut
	
	public int userChk(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//userfindChk
	
	public int busiChk(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.busifindChk", vo);
		return cnt;
	}//userfindChk

	public int insertUserNumber(FindPwdVO vo) {
		int cnt = 0;
		cnt = sqlSession.insert("LoginMapper.insertUserNumber", vo);
		return cnt;
	}

	public int CheckCerUserNumber(FindPwdVO vo) {
		int cnt = 0;
		System.out.println("99999999999999999999999999999999999999 vo.cer_number : " + vo.getCer_number());
		cnt = sqlSession.selectOne("LoginMapper.CheckCerUserNumber", vo);
		return cnt;
	}//CheckCerNumber

}//class