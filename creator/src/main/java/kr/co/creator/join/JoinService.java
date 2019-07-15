package kr.co.creator.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.DocumentVO;
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
	
	public int joinCumbu(DocumentVO vo) {
		int successCnt = 0;
		successCnt = joinDAO.joinCumbu(vo);
		return successCnt;
	}//joinCumbu
	

}