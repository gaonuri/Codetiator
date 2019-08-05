package kr.co.creator.join;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.UserVO;

@Repository
public class JoinDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int joinEmailChk(UserVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("JoinMapper.joinEmailChk", vo);
		return cnt;
	}//joinEmailChk
	
	public int joinUser(UserVO vo) {
		int successCnt = 0;
		successCnt = sqlSession.insert("JoinMapper.joinUser", vo);
		return successCnt;
	}//joinUser
	
	public int joinBusi(Busi_userVO vo) {
		int successCnt = 0;
		successCnt = sqlSession.insert("JoinMapper.joinBusi", vo);
		return successCnt;
	}//joinBusi

	public int joinLicenseChk(Busi_userVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("JoinMapper.joinLicenseChk", vo);
		
		System.out.println("DAODAODAODAODAODAODAODAODAODAODAODAODAODAODAODAODAODAO" + cnt);
		return cnt;
	}//joinLicenseChk
	
	public int joinMagEmailChk(Busi_userVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("JoinMapper.joinMagEmailChk", vo);
		return cnt;
	}//joinMagEmailChk  
	
}