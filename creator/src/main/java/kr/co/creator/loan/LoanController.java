package kr.co.creator.loan;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.DocumentVO;
import kr.co.creator.vo.FileVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.RepayVO;
import kr.co.creator.vo.UserVO;

@Controller
public class LoanController {
	
	@Autowired
	UserDAOService userDAOService;

	@Autowired
	LoanDAOService loanDAOService;

	private static final Logger logger = LoggerFactory.getLogger(LoanController.class);

	@RequestMapping(value = "/loan_guide", method = RequestMethod.GET)
    public String loan(HttpSession session) throws Exception {

    	return "loan/loan_guide";
    }
	
	@RequestMapping(value = "/getloan", method = RequestMethod.GET)
	public String getloan(UserVO userVO, HttpSession session) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
    	return "loan/getloan";
    }
	
	@RequestMapping(value = "/applyloan", method = RequestMethod.GET)
	public String applyloan(HttpSession session, HttpServletResponse response, UserVO vo, PrintWriter out) throws Exception {
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8"); //
		MemberVO voFromSession = (MemberVO) session.getAttribute("memVO");
		String cnt = voFromSession.getBusi_num();
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		if(cnt == null || cnt == "") {
			out.write("<script>alert('사업자 회원만 대출 신청이 가능합니다.');location.href='/creator/main';</script>");
		} else {
			return "loan/applyloan";
		}
    	return null;
    }
	
	
	@RequestMapping(value = "/popup", method = RequestMethod.GET)
	public String popup1(HttpSession session) throws Exception {
		
    	return "loan/popup";
    }
	
	@RequestMapping(value = "/addinfo", method = RequestMethod.GET)
	public String addinfo(HttpSession session, ProjectVO pvo, FileVO fvo, GuaranteeVO gvo) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		pvo = (ProjectVO) session.getAttribute("applyProjectVO");
		session.setAttribute("applyProjectVO", pvo);
		session.setAttribute("FileVO", fvo);
		session.setAttribute("GuaranteeVO", gvo);

    	return "loan/addinfo";
    }
	
	@RequestMapping(value = "/addinfo_process", method = RequestMethod.POST)
	public void addinfo_process(HttpSession session, ProjectVO pvo, GuaranteeVO gvo, PrintWriter out) {
		logger.info("111");
		int saveFileCnt = 0;
		int cnt = 0;
		int gnt = 0;
		logger.info("222");
		MemberVO voFromSession = (MemberVO) session.getAttribute("memVO");
		logger.info("333");
		ProjectVO pvo2 = (ProjectVO) session.getAttribute("applyProjectVO");
		logger.info("444"+pvo2);
		pvo.setProject_num(pvo2.getProject_num());
		gvo.setGuarantee_num(pvo2.getGuarantee_num());
		System.out.println("pvo2.getProject_num() : " + pvo2.getProject_num());
		System.out.println("voFromSession.getBusi_num() : " + voFromSession.getBusi_num());
		pvo.setBusi_num(voFromSession.getBusi_num());//법인 유저 넘버 가져오기
		System.out.println("pvo.getBusi_num() : " + pvo.getBusi_num());
//		String repay_count = loanDAOService.RepaySelect(rvo); //상환내역 불러오기
//		pvo.setRepay_count(repay_count);
		System.out.println("pvo : " + pvo);
		System.out.println("gvo : " + gvo);
		System.out.println("pvo_img : " + pvo.getImg());
		if(pvo.getImg() != null && pvo.getImg().getSize() > 0) {
			pvo.setImg_path(UtilForFile.fileUpByType(pvo.getImg(), "loan", pvo.getProject_num()));
			System.out.println("프로젝트 넘버 : " + pvo.getProject_num());
			saveFileCnt++;
		}
		if(gvo.getGuarantee_img() != null && gvo.getGuarantee_img().getSize() > 0) {
			gvo.setGuarantee_img_path(UtilForFile.fileUpByType(gvo.getGuarantee_img(), "loan", pvo.getProject_num()));
			saveFileCnt++;
		}
		if(gvo.getReference_file1() != null && gvo.getReference_file1().getSize() > 0) {
			gvo.setReference_file1_path(UtilForFile.fileUpByType(gvo.getReference_file1()    , "loan", pvo.getProject_num()));
			saveFileCnt++;
		}
		if(gvo.getReference_file2() != null && gvo.getReference_file2().getSize() > 0) {
			gvo.setReference_file2_path(UtilForFile.fileUpByType(gvo.getReference_file2()    , "loan", pvo.getProject_num()));
			saveFileCnt++;
		}
		if(gvo.getReference_file3() != null && gvo.getReference_file3().getSize() > 0) {
			gvo.setReference_file3_path(UtilForFile.fileUpByType(gvo.getReference_file3()    , "loan", pvo.getProject_num()));
			saveFileCnt++;
		}
		System.out.println("saveFileCnt : " + saveFileCnt);
		if(saveFileCnt > 0) {
			cnt = loanDAOService.update_project(pvo); //프로젝트 DB에 넣기
			System.out.println("프로젝트 업데이트 성공");
			if(cnt > 0) {
				gvo.setProject_num(pvo.getProject_num());
				gnt = loanDAOService.update_guarantee(gvo); //담보 DB에 넣기
			System.out.println("담보 업데이트 성공");
				session.setAttribute("applyProjectVO", pvo);
				session.setAttribute("GuaranteeVO", gvo);
			}
		}
		out.print(gnt);
		out.close();
    }
	
	@RequestMapping(value = "/sub_document", method = RequestMethod.GET)
	public String sub_document(HttpSession session, ProjectVO pvo) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		pvo = (ProjectVO) session.getAttribute("applyProjectVO");
		session.setAttribute("applyProjectVO", pvo);
		
    	return "loan/sub_document";
    }
	
	@RequestMapping(value = "/sub_document_process", method = RequestMethod.POST)
	public void sub_document_process(HttpSession session, MemberVO vo, FileVO fvo, ProjectVO pvo, GuaranteeVO gvo, PrintWriter out) {
		MemberVO voFromSession = (MemberVO) session.getAttribute("memVO");
		ProjectVO pvo2 = (ProjectVO) session.getAttribute("applyProjectVO");
		System.out.println("voFromSession.getBusi_num() : " + voFromSession.getBusi_num());
		pvo.setBusi_num(voFromSession.getBusi_num());//법인 유저 넘버 가져오기
		pvo.setProject_num(pvo2.getProject_num());
		System.out.println("pvo.getBusi_num() : " + pvo.getBusi_num());
		//fileupload
		int cnt = 0;
		DocumentVO dvo = new DocumentVO();
			int saveFileCnt = 0;

			if(fvo.getBusi_regi() != null && fvo.getBusi_regi().getSize() > 0) {
				dvo.setBusi_regi(UtilForFile.fileUpByType(fvo.getBusi_regi()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getJumin_chobon() != null && fvo.getJumin_chobon().getSize() > 0) {
				dvo.setJumin_chobon	(UtilForFile.fileUpByType(fvo.getJumin_chobon() , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_ingam() != null && fvo.getCer_ingam().getSize() > 0) {
				dvo.setCer_ingam	(UtilForFile.fileUpByType(fvo.getCer_ingam()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_budong() != null && fvo.getCer_budong().getSize() > 0) {
				dvo.setCer_budong	(UtilForFile.fileUpByType(fvo.getCer_budong()   , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_dong() != null && fvo.getCer_dong().getSize() > 0) {
				dvo.setCer_dong		(UtilForFile.fileUpByType(fvo.getCer_dong()     , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_income() != null && fvo.getCer_income().getSize() > 0) {
				dvo.setCer_income	(UtilForFile.fileUpByType(fvo.getCer_income()   , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_vat() != null && fvo.getCer_vat().getSize() > 0) {
				dvo.setCer_vat		(UtilForFile.fileUpByType(fvo.getCer_vat()      , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCer_other() != null && fvo.getCer_other().getSize() > 0) {
				dvo.setCer_other	(UtilForFile.fileUpByType(fvo.getCer_other()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCopy_id() != null && fvo.getCopy_id().getSize() > 0) {
				dvo.setCopy_id		(UtilForFile.fileUpByType(fvo.getCopy_id()      , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(fvo.getCopy_bankbook() != null && fvo.getCopy_bankbook().getSize() > 0) {
				dvo.setCopy_bankbook(UtilForFile.fileUpByType(fvo.getCopy_bankbook(), "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(saveFileCnt > 0) {
				dvo.setProject_num(pvo.getProject_num());
				cnt = loanDAOService.documentInsert(dvo); //서류 DB에 넣기
				session.setAttribute("DocumentVO", dvo);
			}
		out.print(cnt);
		out.close();
    }//sub_document_process
	
	@RequestMapping(value = "/loan_judge", method = RequestMethod.GET)
	public String final_loan(HttpSession session) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		
    	return "loan/loan_judge";
    }
	
	@RequestMapping(value = "/final_fail", method = RequestMethod.GET)
	public String final_fail(HttpSession session) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
    	return "loan/final_fail";
    }
	
	@RequestMapping(value = "/final_success", method = RequestMethod.GET)
	public String final_success(HttpSession session) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
    	return "loan/final_success";
    }
	
	@RequestMapping(value = "/useTerm", method = RequestMethod.GET)
	public String useTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/useTerm";
    }
	
	@RequestMapping(value = "/pInfoProvideTerm", method = RequestMethod.GET)
	public String pInfoProvideTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoProvideTerm";
    }
	
	@RequestMapping(value = "/pInfoInquiryTerm", method = RequestMethod.GET)
	public String pInfoInquiryTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoInquiryTerm";
    }
	
	@RequestMapping(value = "/pInfoUseTerm", method = RequestMethod.GET)
	public String pInfoUseTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoUseTerm";
    }
	
	@RequestMapping(value = "/uniqueInfoTerm", method = RequestMethod.GET)
	public String uniqueInfoTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/uniqueInfoTerm";
    }
	
	@RequestMapping(value = "/pInfoSelectedTerm", method = RequestMethod.GET)
	public String pInfoSelectedTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoSelectedTerm";
    }
	
	@RequestMapping(value="/applyloaninsert", method=RequestMethod.POST)
	public void applyLoanInsert(HttpSession session, PrintWriter out, ProjectVO pvo) {
		logger.info("=== applyLoanInsert ===");
		MemberVO voFromSession = (MemberVO) session.getAttribute("memVO");
		pvo.setBusi_num(voFromSession.getBusi_num());//법인 유저 넘버 가져오기
		int cnt = 0;
		cnt = loanDAOService.applyLoanInsert(pvo);
		int cnt1 = 0;
		if(cnt > 0) {
			cnt1 = loanDAOService.applyLoanInsert1(pvo);
		}
		session.setAttribute("applyProjectVO", pvo);
		out.print(cnt1);
		out.flush();
		out.close();
	}//applyLoanInsert
	
}
