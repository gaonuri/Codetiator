package kr.co.creator.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.FindPwdVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;
	
	public int findPwdChk(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.findPwdChk(vo);
		return cnt;
	}//findPwdChk
	
}//class