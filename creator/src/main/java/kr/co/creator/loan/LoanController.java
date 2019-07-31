package kr.co.creator.loan;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.DocumentVO;
import kr.co.creator.vo.DocumentVO2;
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
	public String applyloan(HttpSession session, UserVO vo) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
//		vo = userDAOService.memberInfo(vo);
//		session.setAttribute("UserVO", vo);
    	return "loan/applyloan";
    }
	
	
	@RequestMapping(value = "/popup", method = RequestMethod.GET)
	public String popup1(HttpSession session) throws Exception {
		
    	return "loan/popup";
    }
	
	@RequestMapping(value = "/addinfo", method = RequestMethod.GET)
	public String addinfo(HttpSession session, ProjectVO pvo, DocumentVO2 dvo) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		session.setAttribute("ProjectVO", pvo);
		session.setAttribute("DocumentVO2", dvo);

    	return "loan/addinfo";
    }
	
	@RequestMapping(value = "/addinfo_process", method = RequestMethod.GET)
	public void addinfo_process(HttpSession session, ProjectVO pvo, DocumentVO2 dvo) throws Exception {
		session.setAttribute("ProjectVO", pvo);
		session.setAttribute("DocumentVO2", dvo);
    }
	
	@RequestMapping(value = "/sub_document", method = RequestMethod.GET)
	public String sub_document(HttpSession session, ProjectVO pvo, DocumentVO2 dvo, GuaranteeVO gvo) throws Exception {
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		session.setAttribute("ProjectVO", pvo);
		session.setAttribute("DocumentVO2", dvo);
		session.setAttribute("GuaranteeVO", gvo);
		
    	return "loan/sub_document";
    }
	
	@RequestMapping(value = "/sub_document_process", method = RequestMethod.POST)
	public void sub_document_process(HttpSession session, MemberVO vo, ProjectVO pvo, DocumentVO2 dvo2, RepayVO rvo, GuaranteeVO gvo, PrintWriter out) {
		MemberVO voFromSession = (MemberVO) session.getAttribute("memVO");
		pvo = (ProjectVO) session.getAttribute("ProjectVO");
		dvo2 = (DocumentVO2) session.getAttribute("DocumentVO2");
		gvo = (GuaranteeVO) session.getAttribute("GuaranteeVO");
		System.out.println("voFromSession.getBusi_num() : " + voFromSession.getBusi_num());
		pvo.setBusi_num(voFromSession.getBusi_num());//법인 유저 넘버 가져오기
		String repay_count = loanDAOService.RepaySelect(rvo); //상환내역 불러오기
		pvo.setRepay_count(repay_count);
		int insert_project_yn = 0;
		insert_project_yn = loanDAOService.insert_project(pvo); //프로젝트 DB에 넣기
		int gnt = 0;
		gnt = loanDAOService.guaranteeInsert(gvo); //담보 DB에 넣기
		//fileupload
		int cnt = 0;
		DocumentVO dvo = new DocumentVO();
		logger.info("insert_project_yn : "+insert_project_yn);
		if(insert_project_yn > 0 && gnt > 0) {
			int saveFileCnt = 0;
			if(dvo2.getBusi_regi() != null && dvo2.getBusi_regi().getSize() > 0) {
				dvo.setBusi_regi	(UtilForFile.fileUpByType(dvo2.getBusi_regi()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getJumin_chobon() != null && dvo2.getJumin_chobon().getSize() > 0) {
				dvo.setJumin_chobon	(UtilForFile.fileUpByType(dvo2.getJumin_chobon() , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_ingam() != null && dvo2.getCer_ingam().getSize() > 0) {
				dvo.setCer_ingam	(UtilForFile.fileUpByType(dvo2.getCer_ingam()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_budong() != null && dvo2.getCer_budong().getSize() > 0) {
				dvo.setCer_budong	(UtilForFile.fileUpByType(dvo2.getCer_budong()   , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_dong() != null && dvo2.getCer_dong().getSize() > 0) {
				dvo.setCer_dong		(UtilForFile.fileUpByType(dvo2.getCer_dong()     , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_income() != null && dvo2.getCer_income().getSize() > 0) {
				dvo.setCer_income	(UtilForFile.fileUpByType(dvo2.getCer_income()   , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_vat() != null && dvo2.getCer_vat().getSize() > 0) {
				dvo.setCer_vat		(UtilForFile.fileUpByType(dvo2.getCer_vat()      , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCer_other() != null && dvo2.getCer_other().getSize() > 0) {
				dvo.setCer_other	(UtilForFile.fileUpByType(dvo2.getCer_other()    , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCopy_id() != null && dvo2.getCopy_id().getSize() > 0) {
				dvo.setCopy_id		(UtilForFile.fileUpByType(dvo2.getCopy_id()      , "loan", pvo.getProject_num()));
				saveFileCnt++;
			}
			if(dvo2.getCopy_bankbook() != null && dvo2.getCopy_bankbook().getSize() > 0) {
				dvo.setCopy_bankbook(UtilForFile.fileUpByType(dvo2.getCopy_bankbook(), "loan", pvo.getProject_num()));
				saveFileCnt++;
			}

			if(saveFileCnt > 0) {
				dvo.setProject_num(pvo.getProject_num());
				cnt = loanDAOService.documentInsert(dvo); //서류 DB에 넣기
				session.setAttribute("DocumentVO", dvo);
			}
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
	
}