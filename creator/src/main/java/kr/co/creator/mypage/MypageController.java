package kr.co.creator.mypage;

import java.io.IOException;
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

import kr.co.creator.invest.InvestService;
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
import kr.co.creator.vo.InvestVO;
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
	public String my_modify(HttpSession session, Model model, MemberVO userVO, UserVO useVO, Busi_userVO busiVO, AccountVO accVO, InOutVO ioVO) {
		logger.info("my_depo_mgn");
		userVO = (MemberVO)session.getAttribute("memberVO");
		accVO = service.account(userVO);
		ioVO = service.inout(userVO);
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		
		if(userVO.getUser_num() != null && userVO.getUser_num() != "") {
			System.out.println("=======================================USER======================================");
			useVO = service.user(userVO);
			model.addAttribute("user", useVO);
		} else if(userVO.getBusi_num() != null && userVO.getBusi_num() != "") {
			System.out.println("=======================================BUSI======================================");
			busiVO = service.busi(userVO);
			model.addAttribute("busi", busiVO);
		}
		model.addAttribute("acnt", accVO);
		model.addAttribute("Inout",ioVO);
//		logger.info("my_depo_mgn"+accVO);
//		logger.info("my_depo_mgn"+ioVO);
//		logger.info("my_depo_mgn"+busiVO);
		return "mypage/my_depo_mgn";
	}
	
//	@RequestMapping(value = "/account_insert", method = RequestMethod.POST)
//	public void account_insert(HttpSession session, Model model, PrintWriter out, AccountVO accVO, MemberVO userVO ) {
//		logger.info("account_insert");
//		userVO = (MemberVO)session.getAttribute("memVO");
//		if(userVO.getUser_num() != null) {
//			System.out.println("account_insert"+ accVO.getUser_num());
//			int count = 0;
//			count = service.account_insert(accVO);
//			out.print(count);
//			out.flush();
//			out.close();
//		}
//		if(userVO.getBusi_num() != null) {
//			System.out.println("account_insert"+ accVO.getBusi_num());
//			int count = 0;
//			count = service.account_insert(accVO);
//			out.print(count);
//			out.flush();
//			out.close();
//		}//if
//	}//account_insert
	
	@RequestMapping(value = "/useraccount_insert", method = RequestMethod.POST)
	public void useraccount_insert(Model model, PrintWriter out, AccountVO acVO, MemberVO userVO ) {
		logger.info("useraccount_insert");
		int count = 0;
		count = service.useraccount_insert(acVO);
		if(count > 0) {
			System.out.println("account_insert"+ acVO.getUser_num());
			out.print(count);
			out.flush();
			out.close();
		}
	}//useraccount_insert
	
	@RequestMapping(value = "/busiaccount_insert", method = RequestMethod.POST)
	public void busiaccount_insert(HttpSession session, Model model, PrintWriter out, AccountVO acVO, MemberVO userVO ) {
		logger.info("busiaccount_insert");
		userVO = (MemberVO)session.getAttribute("memVO");
		int count = 0;
		count = service.busiaccount_insert(acVO);
		if(count > 0) {
			System.out.println("account_insert"+ acVO.getBusi_num());
			out.print(count);
			out.flush();
			out.close();
		}//if
	}//busiaccount_insert
	
	@RequestMapping(value = "/depo_update", method = RequestMethod.POST)
	public void deposit_update(HttpSession session, Model model, PrintWriter out, AccountVO accVO) {
		logger.info("depo_update");
		if(session.getAttribute("memVO") == null) {
			return;
		}
		System.out.println("VOVOVOVOVOVOVOVOVOVOVOVOVOVOVOVOVOVOVOVO" + accVO);
		if(accVO.getUser_num() != null) {
			System.out.println("depo_update !!!!!!!!!!!!!!!!!!!!!!!!! user" + accVO.getUser_num());
		}
		if(accVO.getBusi_num() != null) {
			System.out.println("depo_update !!!!!!!!!!!!!!!!!!!!!!!!! busi" + accVO.getBusi_num());
		}
		int count = 0;
		count = service.depo_update(accVO);
		out.print(count);
		//out.flush();
		out.close();
	}//depo_update
	
	@RequestMapping(value = "/CertEmail", method = RequestMethod.POST)
	public void CertEmail(HttpSession session, PrintWriter out, MemberVO memvo, FindPwdVO vo, EmailForm form, FindUtil findUtil) throws Exception {
		logger.info("=== CertEmail ===");
		int cnt = 0;
		if(cnt != 0) {
			cnt = loginService.userFindChk(vo);
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
		memvo = (MemberVO)session.getAttribute("memVO");
		logger.info("=== CertEmail : "+memvo.getUser_num());
		logger.info("=== CertEmail : "+memvo.getBusi_num());
		int updateCertNunYN = 0;
			if(memvo.getUser_num() != null && !memvo.getUser_num().equals("")) {
				logger.info("=== CertEmail : "+memvo.getUser_num());
				String newPassword, user_name;
				newPassword = findUtil.getRamdomPassword(8);
				vo.setUser_num(memvo.getUser_num());
				user_name = sqlSession.selectOne("LoginMapper.selectName", vo);
				vo.setNewPassword(newPassword);
				vo.setUser_name(user_name);
				System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!vo.getCer_number() : " + vo.getCer_number());
				form.setContent("인증번호는 " + newPassword + " 입니다");
				form.setSubject("안녕하세요 " + vo.getUser_name() + "님 인증번호를 확인해 주세요");
				form.setReceiver(vo.getEmail());
				//emailSender.sendEmail(form);
				System.out.println(vo.getEmail());
				updateCertNunYN = loginService.insertUserNumber(vo);
				
			} else if(memvo.getBusi_num() != null && !memvo.getBusi_num().equals("")) {
				logger.info("=== CertEmail : "+memvo.getBusi_num());
				String newPassword = null, busi_name = null;
				newPassword = findUtil.getRamdomPassword(8);
				busi_name = sqlSession.selectOne("LoginMapper.selectBusiName", vo);
				vo.setNewPassword(newPassword);
				vo.setManager_name(busi_name);
				form.setContent("인증번호는 " + newPassword + " 입니다");
				form.setSubject("안녕하세요 " + vo.getManager_name() + "님 인증번호를 확인해 주세요");
				form.setReceiver(vo.getManager_email());
				//emailSender.sendEmail(form);
				System.out.println(vo.getManager_email());
				updateCertNunYN = loginService.insertNumber(vo);
			}
		out.print(updateCertNunYN);
		out.flush();
		out.close();
	}//CertEmail
	
	@RequestMapping(value = "/DepocerNumber", method = RequestMethod.POST)
	public void DepocerNumber(HttpSession session, PrintWriter out, MemberVO memvo, FindPwdVO vo, Busi_userVO bsvo) {
		logger.info("=== DepocerNumber ===");
		int CertNunYN = 0;
		memvo = (MemberVO)session.getAttribute("memVO");
		System.out.println("7777777777777777777777777777777777777777777777777777777777777777777777777777777777 vo.cer_number : " + vo.getCer_number());
			if(memvo.getUser_num() != null && !memvo.getUser_num().equals("")) {
				CertNunYN = loginService.CheckCerUserNumber(vo);
				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ CertNunYN :" + CertNunYN);
				out.print(CertNunYN);
				out.flush();
				out.close();
			} else if(memvo.getBusi_num() != null && !memvo.getBusi_num().equals("")) {
				CertNunYN = loginService.CheckCerNumber(bsvo);
				out.print(CertNunYN);
				out.flush();
				out.close();
			}
	}//CheckCerNumber
	
	@RequestMapping(value = "/bankNumChk", method = RequestMethod.POST)
	public void joinEmailChk(PrintWriter out, AccountVO accvo) throws IOException {
		logger.info("=== bankNumChk ===");
//		logger.info(vo.getEmail());
		int cnt = 0;
		cnt = service.bankNumChk(accvo);
		out.print(cnt);
		out.flush();
		out.close();
	}//joinEmailChk
	
	@RequestMapping(value = "/my_modify", method = RequestMethod.GET)
	public String my_modify() {
		logger.info("my_modify");
		
		return "mypage/my_modify";
	}//my_modify
	
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
	
	@RequestMapping(value="/updatepass1", method=RequestMethod.POST)
	public void updatePass1(HttpSession session, PrintWriter out, MemberVO vo) {
		logger.info("=== updatePass1 ===");
		vo = sqlSession.selectOne("MypageMapper.UpdatePass1", vo);
		int cnt = 0;
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			cnt = 1;
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//updatePass1
	
	@RequestMapping(value="/deletebusi", method=RequestMethod.POST)
	public void deleteBusi(HttpSession session, PrintWriter out, MemberVO vo) {
		logger.info("=== deleteBusi ===");
		vo = sqlSession.selectOne("MypageMapper.Deletebusi", vo);
		int cnt = 0;
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			cnt = 1;
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//deleteBusi

	
}//class
