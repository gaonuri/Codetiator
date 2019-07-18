package kr.co.creator.loan;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.DocumentVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Controller
public class LoanController {
	
	@Autowired
	UserDAOService userDAOService;

	private static final Logger logger = LoggerFactory.getLogger(LoanController.class);

	@RequestMapping(value = "/loan/loan", method = RequestMethod.GET)
    public String loan(HttpSession session) throws Exception {

    	return "loan/loan";
    }
	
	@RequestMapping(value = "/loan/loan_guide", method = RequestMethod.GET)
    public String loan_guide(HttpSession session) throws Exception {

    	return null;
    }
	
	@RequestMapping(value = "/loan/getloan", method = RequestMethod.GET)
	public String getloan(UserVO userVO, HttpSession session) throws Exception {
		
    	return "loan/getloan";
    }
	
	@RequestMapping(value = "/loan/applyloan", method = RequestMethod.GET)
	public String applyloan(HttpSession session, UserVO vo) throws Exception {
//		vo = userDAOService.memberInfo(vo);
//		session.setAttribute("UserVO", vo);
    	return "loan/applyloan";
    }
	
	
	@RequestMapping(value = "/loan/popup", method = RequestMethod.GET)
	public String popup1(HttpSession session) throws Exception {
		
    	return "loan/popup";
    }
	
	@RequestMapping(value = "/loan/addinfo", method = RequestMethod.GET)
	public String addinfo(HttpSession session, ProjectVO pvo, DocumentVO dvo) throws Exception {
		session.setAttribute("ProjectVO", pvo);
		session.setAttribute("DocumentVO", dvo);

    	return "loan/addinfo";
    }
	
	@RequestMapping(value = "/loan/sub_document", method = RequestMethod.GET)
	public String sub_document(HttpSession session) throws Exception {
		
    	return "loan/sub_document";
    }
	
	@RequestMapping(value = "/loan/sub_document_process", method = RequestMethod.GET)
	public String sub_document_process(HttpSession session, DocumentVO dvo) throws Exception {
		
		session.setAttribute("DocumentVO", dvo);
    	return "loan/sub_document_process";
    }
	
	@RequestMapping(value = "/loan/loan_judge", method = RequestMethod.GET)
	public String final_loan(HttpSession session) throws Exception {
		
    	return "loan/loan_judge";
    }
	
	@RequestMapping(value = "/loan/final_fail", method = RequestMethod.GET)
	public String final_fail(HttpSession session) throws Exception {
		
    	return "loan/final_fail";
    }
	
	@RequestMapping(value = "/loan/final_success", method = RequestMethod.GET)
	public String final_success(HttpSession session) throws Exception {
		
    	return "loan/final_success";
    }
	
	@RequestMapping(value = "/support/useTerm", method = RequestMethod.GET)
	public String useTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/useTerm";
    }
	
	@RequestMapping(value = "/support/pInfoProvideTerm", method = RequestMethod.GET)
	public String pInfoProvideTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoProvideTerm";
    }
	
	@RequestMapping(value = "/support/pInfoInquiryTerm", method = RequestMethod.GET)
	public String pInfoInquiryTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoInquiryTerm";
    }
	
	@RequestMapping(value = "/support/pInfoUseTerm", method = RequestMethod.GET)
	public String pInfoUseTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoUseTerm";
    }
	
	@RequestMapping(value = "/support/uniqueInfoTerm", method = RequestMethod.GET)
	public String uniqueInfoTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/uniqueInfoTerm";
    }
	
	@RequestMapping(value = "/support/pInfoSelectedTerm", method = RequestMethod.GET)
	public String pInfoSelectedTerm(UserVO userVO, HttpSession session) throws Exception {
		
    	return "support/pInfoSelectedTerm";
    }
	
}