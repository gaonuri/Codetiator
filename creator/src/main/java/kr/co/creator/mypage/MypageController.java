package kr.co.creator.mypage;

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

import kr.co.creator.login.EmailForm;
import kr.co.creator.login.EmailSender;
import kr.co.creator.login.FindUtil;
import kr.co.creator.login.LoginService;
import kr.co.creator.login.UtilForSession;
import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.HistoryVO;
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.MemberListVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MypageService service;
	
	@Autowired
	LoginService loginService;

	@Autowired
	private EmailSender emailSender;
	
	@RequestMapping(value = "/my_dashboard", method = RequestMethod.GET)
	public String list(HttpSession session, Model model, MemberVO userVO, MypageVO myVO) {
		logger.info("my_dashboard");
		userVO = (MemberVO)session.getAttribute("memberVO");
		List<MypageVO> invest = null;
		invest = service.invest_detail(userVO);
		model.addAttribute("investList", invest);
		return "mypage/my_dashboard";
	}
	
	@RequestMapping(value = "/my_invest_list", method = RequestMethod.GET)
	public String invest(HttpSession session, Model model, MemberVO userVO, MypageVO myVO) {
		logger.info("my_dashboard");
		userVO = (MemberVO)session.getAttribute("memberVO");
		List<MypageVO> invest = null;
		invest = service.invest_detail(userVO);
		model.addAttribute("investList", invest);
		return "mypage/my_invest_list";
	}
	
	@RequestMapping(value = "/my_loan_list", method = RequestMethod.GET)
	public String loan(HttpSession session, Model model, MemberVO userVO, ProjectVO proVO) {
		logger.info("my_loan_list");
		userVO = (MemberVO)session.getAttribute("memberVO");
		List<ProjectVO> loan= null;
		loan = service.loan_list(userVO);
		model.addAttribute("loanList",loan);
		return "mypage/my_loan_list";
	}
	
	@RequestMapping(value = "/my_depo_mgn", method = RequestMethod.GET)
	public String my_modify(HttpSession session, Model model, MemberVO userVO) {
		logger.info("my_depo_mgn");
		userVO = (MemberVO)session.getAttribute("memberVO");
		AccountVO accVO = null;
		InOutVO ioVO = null;
		UserVO useVO = null;
		Busi_userVO busiVO = null;
		accVO = service.account(userVO);
		ioVO = service.inout(userVO);
		useVO = service.user(userVO);
		busiVO = service.busi(userVO); 
				
		model.addAttribute("user", useVO);
		model.addAttribute("busi", busiVO);
		model.addAttribute("acnt", accVO);
		model.addAttribute("Inout",ioVO);
		logger.info("my_depo_mgn"+accVO);
		logger.info("my_depo_mgn"+ioVO);
		logger.info("my_depo_mgn"+busiVO);
		return "mypage/my_depo_mgn";
	}
	
	@RequestMapping(value = "/CertEmail", method = RequestMethod.POST)
	public void CertEmail(PrintWriter out, FindPwdVO vo, EmailForm form, FindUtil findUtil) throws Exception {
		logger.info("=== CertEmail ===");
		int cnt = 0;
		if(cnt != 0) {
			cnt = loginService.userfindChk(vo);
			String newPassword, user_name;
			newPassword = findUtil.getRamdomPassword(8);
			user_name = sqlSession.selectOne("LoginMapper.selectUserName", vo);
			vo.setNewPassword(newPassword);
			vo.setUser_name(user_name);
			form.setContent("인증번호는 " + newPassword + " 입니다");
			form.setSubject("안녕하세요 " + vo.getUser_name() + "님 인증번호를 확인해 주세요");
			form.setReceiver(vo.getUser_email());
			emailSender.sendEmail(form);
		} else {
			cnt = loginService.busifindChk(vo);
			String newPassword, busi_name;
			newPassword = findUtil.getRamdomPassword(8);
			busi_name = sqlSession.selectOne("LoginMapper.selectBusiName", vo);
			vo.setNewPassword(newPassword);
			vo.setManager_name(busi_name);
			form.setContent("인증번호는 " + newPassword + " 입니다");
			form.setSubject("안녕하세요 " + vo.getManager_name() + "님 인증번호를 확인해 주세요");
			form.setReceiver(vo.getManager_email());
			emailSender.sendEmail(form);
		}
		if(cnt != 0) {
			System.out.println(vo.getUser_email());
			cnt = loginService.insertNumber(vo);
			out.print(cnt);
			out.flush();
			out.close();
		} else {
			System.out.println(vo.getManager_email());
			cnt = loginService.insertNumber(vo);
			out.print(cnt);
			out.flush();
			out.close();
		}
		out.print(cnt);
		out.flush();
		out.close();
	}//CertEmail
	
	@RequestMapping(value = "/my_modify", method = RequestMethod.GET)
	public String my_modify() {
		logger.info("my_modify");
		
		return "mypage/my_modify";
	}
	
	@RequestMapping(value = "/mypagemodifyu", method = RequestMethod.POST)
	public void myPageModifyU(HttpSession session, PrintWriter out, MemberListVO vo) {
		logger.info("=== myPageModifyU ===");
		vo = sqlSession.selectOne("MypageMapper.MyPageModifyU", vo);
		int cnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			cnt = 1;
			session.setAttribute("mypagemem", vo);
		} 
		out.print(cnt);
		out.flush();
		out.close();	
	}//myPageModifyU
	
	@RequestMapping(value="/mypagemodifyb", method=RequestMethod.POST)
	public void myPageModifyB(HttpSession session, PrintWriter out, MemberListVO vo) {
		logger.info("=== myPageModifyB ===");
		vo = sqlSession.selectOne("MypageMapper.MyPageModifyB", vo);
		int cnt = 0;
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			cnt = 1;
			session.setAttribute("mypagemem", vo);
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//myPageModifyB
	
	@RequestMapping(value = "/modify_detail", method = RequestMethod.GET)
	public String modify_detail(HttpSession session, Model model, HistoryVO hvo, AccountVO avo) {
		logger.info("modify_detail");
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		} else {
			List<HistoryVO> hInList = loginService.historyIn(hvo);
			model.addAttribute("hInList", hInList);
			List<HistoryVO> hOutList = loginService.historyOut(hvo);
			model.addAttribute("hOutList", hOutList);
			avo = sqlSession.selectOne("MypageMapper.MyPageBank", avo);
			model.addAttribute("mypagebank", avo);
		}
		return "mypage/modify_detail";
	}
	
	@RequestMapping(value = "/my_popup", method = RequestMethod.GET)
	public String popup1(HttpSession session) throws Exception {
		
    	return "mypage/my_popup";
    }
	
	@RequestMapping(value="/userdataupdate", method=RequestMethod.POST)
	public void userDataUpdate(HttpSession session, PrintWriter out, MemberVO vo) {
		logger.info("=== userDataUpdate ===");
		vo = (MemberVO)session.getAttribute("memberVO");
		int cnt = 0;
		cnt = service.userDataUpdate(vo);
		int cnt1 = 0;
		cnt1 = service.userDataUpdate1(vo);
		out.print(vo);
		out.flush();
		out.close();	
	}//userDataUpdate
	
	@RequestMapping(value="/updatepass", method=RequestMethod.POST)
	public void updatePass(HttpSession session, PrintWriter out, MemberVO vo) {
		logger.info("=== updatePass ===");
		vo = sqlSession.selectOne("MypageMapper.UpdatePass", vo);
		int cnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			cnt = 1;
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//updatePass
	
	@RequestMapping(value="/deleteuser", method=RequestMethod.POST)
	public void deleteUser(HttpSession session, PrintWriter out, MemberVO vo) {
		logger.info("=== deleteUser ===");
		vo = sqlSession.selectOne("MypageMapper.Deleteuser", vo);
		int cnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			cnt = 1;
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//deleteUser
	

	
}//class


