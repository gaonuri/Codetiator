package kr.co.creator.login;

import java.io.PrintWriter;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.CertVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.MemberListVO;
import kr.co.creator.vo.MemberVO;
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
	
	@RequestMapping(value="/login_new", method=RequestMethod.GET)
	public String login_new() {
		logger.info("login_new");
		return "login/login_new";
	}//login_new

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
			session.setAttribute("loginCusGbCd", loginCusGbCd);
			session.setAttribute("mypageVO", vo);
			session.setAttribute("loginCusGbCd", loginCusGbCd);
			sqlSession.insert("LoginMapper.historyTime", vo);
		}
		out.print(successCnt);
		out.close();
	}//loginBusi 
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(MemberVO vo, HttpSession session) {
		logger.info("=== logout ===");
//		session.setAttribute("memVO", null);
//		session.setAttribute("memberVO", null);
//		session.setAttribute("mypageVO", null);
		session.invalidate();
		return "redirect:/login";
	}//logout
	
	@RequestMapping(value = "/logouttime", method = RequestMethod.POST)
	public void logoutTime(MemberVO vo, HttpSession session, PrintWriter out, HttpServletRequest request) {
		logger.info("=== logoutTime ===");
		vo = (MemberVO)session.getAttribute("memVO");
		sqlSession.insert("LoginMapper.logoutTime", vo);
		session.invalidate();
		out.flush();
		out.close();
	}//logoutTime
	
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
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////start
	
	@RequestMapping(value = "/busifindChk", method = RequestMethod.POST)
	public void busifindChk(PrintWriter out, FindPwdVO vo) {
		logger.info("=== busifindChk ===");
		int cnt = 0;
		cnt = loginService.busifindChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//busifindChk
	
	@RequestMapping(value = "/CerEmail", method = RequestMethod.POST)
	public void CerEmail(HttpSession session, PrintWriter out, FindPwdVO vo, EmailForm form, FindUtil findUtil, CertVO cvo) throws Exception {
		logger.info("=== CerEmail ===");
		int cnt = 0;
		cnt = loginService.busifindChk(vo);
		if(cnt > 0) {
			String newPassword, user_name;
			newPassword = findUtil.getRamdomPassword(8);
			user_name = sqlSession.selectOne("LoginMapper.selectBusiName", vo);
			vo.setNewPassword(newPassword);
			vo.setManager_name(user_name);
			form.setContent("인증번호는 " + newPassword + " 입니다");
			form.setSubject("안녕하세요 " + vo.getManager_name() + "님 인증번호를 확인해 주세요");
			form.setReceiver(vo.getManager_email());
			emailSender.sendEmail(form);
		}
		if(cnt > 0) {
			System.out.println(vo.getManager_email());
			cnt = loginService.insertNumber(vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//CerEmail
	
	@RequestMapping(value = "/CheckCerUserNumber", method = RequestMethod.POST)
	public void CheckCerUserNumber(PrintWriter out, FindPwdVO vo, EmailForm form, FindUtil findUtil) throws Exception {
		logger.info("=== CheckCerUserNumber ===");
		int cnt = 0;
		cnt = loginService.CheckCerUserNumber(vo);
		if(cnt > 0) {
			out.print(cnt);
			out.flush();
			out.close();
		}
	}//CheckCerUserNumber
	
	@RequestMapping(value = "/CheckCerNumber", method = RequestMethod.POST)
	public void CheckCerNumber(PrintWriter out, Busi_userVO vo, HttpSession session) throws Exception {
		logger.info("=== CheckCerNumber ===");
		int cnt = 0;
		cnt = loginService.CheckCerNumber(vo);
		if(cnt > 0) {
			session.setAttribute("cerchk", vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
	}//CheckCerNumber
	
	@RequestMapping(value = "/userdataupdatefinal", method = RequestMethod.POST)
	public void userDataUpdateFinal(PrintWriter out, Busi_userVO vo, HttpSession session) {
		logger.info("=== userDataUpdateFinal ===");
		vo = (Busi_userVO)session.getAttribute("cerchk");
		int cnt = 0;
		cnt = loginService.CheckCerNumber(vo);
		if(cnt > 0) {
			sqlSession.update("LoginMapper.userDataUpdateFinal", vo);
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//userDataUpdateFinal
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/userfindchk", method = RequestMethod.POST)
	public void userFindChk(PrintWriter out, FindPwdVO vo, HttpSession session) {
		logger.info("=== userFindChk ===");
		int cnt = 0;
		cnt = loginService.userFindChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//userFindChk
	
	@RequestMapping(value = "/userceremail", method = RequestMethod.POST)
	public void userCerEmail(PrintWriter out, FindPwdVO vo, EmailForm form, FindUtil findUtil) throws Exception {
		logger.info("=== userCerEmail ===");
		int cnt = 0;
		cnt = loginService.userFindChk(vo);
		if(cnt > 0) {
			String newPassword, user_name;
			newPassword = findUtil.getRamdomPassword(8);
			user_name = sqlSession.selectOne("LoginMapper.selectName", vo);
			vo.setNewPassword(newPassword);
			vo.setUser_name(user_name);
			form.setContent("인증번호는 " + newPassword + " 입니다");
			form.setSubject("안녕하세요 " + vo.getUser_name() + "님 인증번호를 확인해 주세요");
			form.setReceiver(vo.getEmail());
			emailSender.sendEmail(form);
		}
		if(cnt > 0) {
			System.out.println(vo.getEmail());
			cnt = loginService.insertNumber1(vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//userCerEmail
	
	@RequestMapping(value = "/usercheckcernumber", method = RequestMethod.POST)
	public void userCheckCerNumber(PrintWriter out, UserVO vo, HttpSession session) throws Exception {
		logger.info("=== userCheckCerNumber ===");
		int cnt = 0;
		cnt = loginService.CheckCerNumber1(vo);
		if(cnt > 0) {
			session.setAttribute("cerchk1", vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
	}//userCheckCerNumber
	
	@RequestMapping(value = "/userdataupdatefinal1", method = RequestMethod.POST)
	public void userDataUpdateFinal1(PrintWriter out, UserVO vo, HttpSession session) {
		logger.info("=== userDataUpdateFinal ===");
		vo = (UserVO)session.getAttribute("cerchk1");
		int cnt = 0;
		cnt = loginService.CheckCerNumber1(vo);
		if(cnt > 0) {
			sqlSession.update("LoginMapper.userDataUpdateFinal1", vo);
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//userDataUpdateFinal1
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// end
	
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
	
    @RequestMapping(value="inquiryemail",method=RequestMethod.POST)
    public void inquiryEmail(EmailForm form, PrintWriter out) throws Exception{
    	System.out.println("sub : " + form.getSubject());
    	System.out.println("rec : " + form.getReceiver());
    	System.out.println("con : " + form.getContent());
    	if(!form.getSubject().equals("") && !form.getReceiver().equals("") && !form.getContent().equals("")) {
    		emailSender.sendEmail(form);
    	}
    	out.close();
    }

}//class


