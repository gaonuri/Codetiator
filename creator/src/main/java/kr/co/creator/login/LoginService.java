package kr.co.creator.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.FindPwdVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;
	
	public int findPwdChk(FindPwdVO vo) {
		System.out.println(vo.getEmail());
		int cnt = 0;
		cnt = loginDAO.findPwdChk(vo);
		return cnt; 
	}//findPwdChk
	
	public int updatePwd(FindPwdVO vo) {
		int cnt = 0;
		cnt = loginDAO.updatePwd(vo);
		return cnt;
	}//updatePwd

//	public int selectName(FindPwdVO vo) {
//		int cnt = 0;
//		cnt = loginDAO.selectName(vo);
//		return cnt;
//	}
	
	
	
	
}//class
