package kr.co.creator.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.UserVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;
	
	public int findPwdChk(FindPwdVO vo) {
		System.out.println("vo.getEmail()");
		int cnt = 0;
		cnt = loginDAO.findPwdChk(vo);
		return cnt; 
	}//findPwdChk
	
	
}//class
