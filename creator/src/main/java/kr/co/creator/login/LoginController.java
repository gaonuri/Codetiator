package kr.co.creator.login;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.HistoryVO;
import kr.co.creator.vo.MemberListVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	LoginService loginService;

	@Autowired
	private EmailSender emailSender;
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		logger.info("login");
		return "login/login";
	}//login

	@RequestMapping(value="/loginuser", method=RequestMethod.POST)
	public void loginUser(MemberVO vo, HttpSession session, PrintWriter out) {
		logger.info("=== loginUser ===");
		vo = sqlSession.selectOne("LoginMapper.loginUser", vo);
		int successCnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			successCnt = 1;
			int loginCusGbCd = 1;
			session.setAttribute("memberVO", vo);
			session.setAttribute("memVO", vo);
			session.setAttribute("mypageVO", vo);
			session.setAttribute("loginCusGbCd", loginCusGbCd);
			sqlSession.insert("LoginMapper.historyTime", vo);
		} 
		out.print(successCnt);
		out.close();
	}//loginUser

	@RequestMapping(value="/loginbusi", method=RequestMethod.POST)
	public void loginBusi(MemberVO vo, HttpSession session, PrintWriter out) {
		logger.info("=== loginBusi ===");
		vo = sqlSession.selectOne("LoginMapper.loginBusi", vo);
		int successCnt = 0;
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			successCnt = 1;
			int loginCusGbCd = 2;
			session.setAttribute("memberVO", vo);
			session.setAttribute("memVO", vo);
			session.setAttribute("mypageVO", vo);
			session.setAttribute("loginCusGbCd", loginCusGbCd);
			sqlSession.insert("LoginMapper.historyTime", vo);
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
	
	@RequestMapping(value = "/findpwd", method=RequestMethod.GET)
	public String findPwd() {
		logger.info("findPwd");
		return "login/findPwd";
	}//findPwd
	
	@RequestMapping(value = "/findpwdchk", method = RequestMethod.POST)
	public void findPwdChk(PrintWriter out, FindPwdVO vo) {
		logger.info("=== findPwdChk ===");
		int cnt = 0;
		cnt = loginService.findPwdChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//findPwdChk
	
	@RequestMapping(value = "/sendnewpassword", method = RequestMethod.POST)
	public void sendNewPassword(PrintWriter out, FindPwdVO vo, EmailForm form, FindUtil findUtil) throws Exception {
		logger.info("=== sendNewPassword ===");
		int cnt = 0;
		cnt = loginService.findPwdChk(vo);
		if(cnt > 0) {
			String newPassword, user_name;
			newPassword = findUtil.getRamdomPassword(8);
			user_name = sqlSession.selectOne("LoginMapper.selectName", vo);
			vo.setNewPassword(newPassword);
			vo.setUser_name(user_name);
			form.setContent("새로운 비밀번호는 " + newPassword + " 입니다");
			form.setSubject("안녕하세요 " + vo.getUser_name() + "님 임시비밀번호를 확인해 주세요");
			form.setReceiver(vo.getEmail());
			emailSender.sendEmail(form);
		}
		if(cnt > 0) {
			System.out.println(vo.getEmail());
			cnt = loginService.updatePwd(vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//sendNewPassword
	
	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public String user_list(Model model) {
		logger.info("user_list");
		
		List<MemberListVO> list = null;
		list = loginService.user_list();
		model.addAttribute("memberList", list);
		return "login/login";
	}//user_list
	
	@RequestMapping(value = "/busi_user_list", method = RequestMethod.GET)
	public String busi_user_list(Model model) {
		logger.info("busi_user_list");
		
		List<MemberListVO> list = null;
		list = loginService.busi_user_list();
		model.addAttribute("memberList", list);
		return "login/login";
	}//busi_user_list
	
}//class


