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

import kr.co.creator.vo.UserVO;

@Controller
public class LoanController {
	
	@Autowired
	UserDAOService userDAOService;

	private static final Logger logger = LoggerFactory.getLogger(LoanController.class);

	@RequestMapping(value = "/loan", method = RequestMethod.GET)
    public String loan(HttpSession session) throws Exception {

    	return "loan/loan";
    }
	
	@RequestMapping(value = "/loan_guide", method = RequestMethod.GET)
    public String loan_guide(HttpSession session) throws Exception {

    	return "loan/loan_guide";
    }
	
	@RequestMapping(value = "/loan/getloan", method = RequestMethod.GET)
	public String getloan(UserVO userVO, HttpSession session) throws Exception {
		
    	return "loan/getloan";
    }
	
	@RequestMapping(value = "/loan/applyloan", method = RequestMethod.GET)
	public String applyloan(HttpSession session, UserVO vo) throws Exception {
		vo = userDAOService.memberInfo(vo);
		session.setAttribute("name", vo.getUser_name());
		session.setAttribute("phone", vo.getPhone());
    	return "loan/applyloan";
    }
	
	@RequestMapping(value = "/loan/popup", method = RequestMethod.GET)
	public String popup(HttpSession session, HttpServletRequest request, PrintWriter out) throws Exception {
		String loan_period = request.getParameter("loan_period"); //대출금액
		String loan_class = request.getParameter("loan_class"); //대출계좌
		String repay_method = request.getParameter("repay_method"); //상환방식
		out.write("<script>\n" + 
				"function fn_doNextStep() {\n" + 
				"	window.open('${pageContext.request.contextPath}/loan/popup1','','menubar=no,width=450,height=300');\n" + 
				"}\n" + 
				"\n" + 
				"</script>");
		out.close();
    	return null;
    }
	
	@RequestMapping(value = "/loan/popup1", method = RequestMethod.GET)
	public String popup1(HttpSession session) throws Exception {

    	return "loan/popup";
    }
	
	@RequestMapping(value = "/loan/popup2", method = RequestMethod.GET)
	public void popup2(PrintWriter out, UserVO vo) throws Exception {
		logger.info("/loan/popup2");
		int count = 0;
		count = userDAOService.insertMember(vo);
		out.print(count);
		out.close();
    }
	
	@RequestMapping(value = "/loan/addinfo", method = RequestMethod.GET)
	public String addinfo(HttpSession session) throws Exception {

    	return "loan/addinfo";
    }
	
	@RequestMapping(value = "/loan/sub_document", method = RequestMethod.GET)
	public String sub_document(HttpSession session) throws Exception {
		
    	return "loan/sub_document";
    }
	
	@RequestMapping(value = "/loan/final_loan", method = RequestMethod.GET)
	public String final_loan(HttpSession session) throws Exception {
		
    	return "loan/final_loan";
    }
	
}