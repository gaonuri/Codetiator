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
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.MemberListVO;
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
	public String my_modify(HttpSession session, Model model, MemberVO userVO, AccountVO accVO, InOutVO ioVO) {
		logger.info("my_depo_mgn");
		userVO = (MemberVO)session.getAttribute("memberVO");
		accVO = service.account(userVO, accVO);
		ioVO = service.inout(userVO, ioVO);
		
		model.addAttribute("Account", accVO);
		model.addAttribute("Inout",ioVO);
		return "mypage/my_depo_mgn";
	}
	
	@RequestMapping(value = "/mypagemodifyu", method = RequestMethod.POST)
	public void myPageModifyU(HttpSession session, PrintWriter out, MemberListVO vo) {
		logger.info("=== myPageModifyU ===");
		vo = sqlSession.selectOne("MypageMapper.MyPageModifyU", vo);
		System.out.println("@@@@@@@@@@@@@@ :" + vo );
		int cnt = 0;
//		successCnt = service.myPageModify(vo);
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
		System.out.println("@@@@@@@@@@@@@@ :" + vo );
		int cnt = 0;
//		successCnt = service.myPageModify(vo);
		if(vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) {
			cnt = 1;
			session.setAttribute("mypagemem", vo);
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//myPageModifyB
	
	@RequestMapping(value = "/modify_detail", method = RequestMethod.GET)
	public String modify_detail() {
		logger.info("modify_detail");
		
		return "mypage/modify_detail";
	}
	
	@RequestMapping(value = "/my_modify", method = RequestMethod.GET)
	public String my_modify() {
		logger.info("my_modify");
		
		return "mypage/my_modify";
	}
	
	@RequestMapping(value="/mypagebank", method=RequestMethod.POST)
	public void myPageBank(HttpSession session, PrintWriter out, AccountVO vo) {
		logger.info("=== myPageBank ===");
		vo = sqlSession.selectOne("MypageMapper.MyPageBank", vo);
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!! :" + vo );
		int cnt = 0;
		if((vo != null && vo.getBusi_num() != null && !vo.getBusi_num().equals("")) 
				|| (vo != null && vo.getUser_num() != null && !vo.getUser_num().equals(""))) {
			cnt = 1;
			session.setAttribute("mypagebank", vo);
		}
		out.print(cnt);
		out.flush();
		out.close();	
	}//myPageBank
	
	
}//class


