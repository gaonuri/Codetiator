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

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;

@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MypageService service;
	
	@RequestMapping(value = "/my_dashboard", method = RequestMethod.GET)
	public String list(HttpSession session, Model model, MemberVO userVO, MypageVO myVO) {
		logger.info("my_dashboard");
		userVO = (MemberVO)session.getAttribute("memberVO");
		List<MypageVO> invest = null;
		invest = service.invest_detail(userVO);
		model.addAttribute("investList", invest);
		return "mypage/my_dashboard";
	}
	
	@RequestMapping(value = "/my_depo_mgn", method = RequestMethod.GET)
	public String my_depo_mgn() {
		logger.info("my_depo_mgn");
				
		return "mypage/my_depo_mgn";
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
	public String my_modify(HttpSession session, Model model, MemberVO userVO, MypageVO myVO) {
		logger.info("my_depo_mgn");
		userVO = (MemberVO)session.getAttribute("memberVO");
		List<MypageVO> depo= null;
		depo = service.depo_log(userVO);
		model.addAttribute("DepoLog", depo);
		return "mypage/my_depo_mgn";
	}
	
	@RequestMapping(value = "/my_modify", method = RequestMethod.GET)
	public String my_modify() {
		logger.info("my_modify");
				
		return "mypage/my_modify";
	}
	
	@RequestMapping(value="/mypagemodify", method=RequestMethod.POST)
	public void myPageModify(MemberVO vo, HttpSession session, PrintWriter out) {
		logger.info("=== myPageModify ===");
		vo = sqlSession.selectOne("MypageMapper.MyPageModify", vo);
		int successCnt = 0;
		if(vo != null && vo.getUser_num() != null && !vo.getUser_num().equals("")) {
			successCnt = 1;
			session.setAttribute("memberVO", vo);
		} 
		out.print(successCnt);
		out.flush();
		out.close();		
	}//myPageModify
	
	@RequestMapping(value = "/mypagepwd", method = RequestMethod.POST)
	public void MyPagePwd(PrintWriter out, MemberVO vo, Model model) throws Exception {
		logger.info("=== MyPagePwd ===");
		int successCnt = 0;
		successCnt = service.myPageModify(vo);
		if(successCnt > 0) {
			String bust_name, user_name;
			bust_name = sqlSession.selectOne("MypageMapper.MyPageModify", vo);
			user_name = sqlSession.selectOne("MypageMapper.MyPageModify", vo);
			vo.setBusi_num(bust_name);
			vo.setUser_name(user_name);
		}
		out.print(successCnt);
		out.flush();
		out.close();
	}//MyPagePwd
	
	@RequestMapping(value = "/modify_detail", method = RequestMethod.GET)
	public String modify_detail() {
		logger.info("modify_detail");
		
		return "mypage/modify_detail";
	}
	
}//class




