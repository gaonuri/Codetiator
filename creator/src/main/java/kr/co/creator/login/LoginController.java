package kr.co.creator.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.UserVO;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	LoginService loginService;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		logger.info("login");
		return "login/login";
	}//login

	@RequestMapping(value="/loginuser", method=RequestMethod.POST)
	public void loginUser(UserVO vo, HttpSession session, PrintWriter out) {
		logger.info("=== loginUser ===");
		vo = sqlSession.selectOne("LoginMapper.loginUser", vo);
		int successCnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			successCnt = 1;
			session.setAttribute("Login_ss", vo);
		}
		out.print(successCnt);
		out.close();
	}//loginUser

	@RequestMapping(value="/loginbusi", method=RequestMethod.POST)
	public void loginBusi(Busi_userVO vo, HttpSession session, PrintWriter out) {
		logger.info("=== loginBusi ===");
		vo = sqlSession.selectOne("LoginMapper.loginBusi", vo);
		int successCnt = 0;
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			successCnt = 1;
			session.setAttribute("Login_sss", vo);
		}
		out.print(successCnt);
		out.close();
	}//loginBusi 
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("=== logout ===");
		session.invalidate();
		return "main/main";
	}//logout
	
	@RequestMapping(value = "/findpwd", method = RequestMethod.GET)
	public String findPwd() {
		logger.info("findPwd");
		return "login/findPwd";
	}//join
	
	@RequestMapping(value = "/findpwdchk", method = RequestMethod.POST)
	public void findPwdChk(PrintWriter out, FindPwdVO vo) throws IOException {
		logger.info("=== findPwdChk ===");
//		logger.info(vo.getEmail());
		int cnt = 0;
		cnt = loginService.findPwdChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//findPwdChk
	
	
}//class