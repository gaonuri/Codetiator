package kr.co.creator.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.UserVO;

@Service
public class JoinService {
	
	@Autowired
	JoinDAO joinDAO;
	
	public int joinEmailChk(UserVO vo) {
		int cnt = 0;
		cnt = joinDAO.joinEmailChk(vo);
		return cnt;
	}//joinEmailChk
		
	public int joinUser(UserVO vo) {
		int successCnt = 0;
		successCnt = joinDAO.joinUser(vo);
		return successCnt;
	}//joinUser
	
	public int joinBusi(Busi_userVO vo) {
		int successCnt = 0;
		successCnt = joinDAO.joinBusi(vo);
		return successCnt;
	}//joinBusi
	
	public int joinLicenseChk(Busi_userVO vo) {
		int cnt = 0;
		cnt = joinDAO.joinLicenseChk(vo);
		return cnt;
	}//joinLicenseChk
	
	public int joinMagEmailChk(Busi_userVO vo) {
		int cnt = 0;
		cnt = joinDAO.joinMagEmailChk(vo);
		return cnt;
	}//joinMagEmailChk
	

}