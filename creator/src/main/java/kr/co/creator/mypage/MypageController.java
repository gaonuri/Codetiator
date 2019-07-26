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

import kr.co.creator.invest.InvestService;
import kr.co.creator.login.EmailForm;
import kr.co.creator.login.FindUtil;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.NoticeVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	//김도엽 test1 testtestsss
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MypageService service;
	
	@RequestMapping(value = "/my_dashboard", method = RequestMethod.GET)
	public String list(HttpSession session, Model model, MemberVO userVO, MypageVO myVO) {
		logger.info("my_dashboard");
//		userVO = (MemberVO)session.getAttribute("userVO");
//		System.out.println("MemverVO");
//		session.getAttribute("busiUserVO");
//		System.out.println("Controller 111111111111111111111111 : " + userVO);
		
		List<MypageVO> invest = null;
		invest = service.invest_detail();
		model.addAttribute("investList", invest);
		
//		userVO.setUser_num("user_num");
//		
//		userVO.setBusi_num("busi_num");
//		service.invest_detail(userVO);
//		
		
		return "mypage/my_dashboard";
	}
	
	@RequestMapping(value = "/my_depo_mgn", method = RequestMethod.GET)
	public String my_depo_mgn() {
		logger.info("my_depo_mgn");
				
		return "mypage/my_depo_mgn";
	}
	
//	@RequestMapping(value = "/my_invest_list", method = RequestMethod.GET)
//	public String my_invest_list(Model modelVO) {
//		logger.info("my_invest_list");
//		vo = SqlSession.selectOne(MypageMapper.InvestList, vo);
//		int successCnt = 0;
//		if(vo != null && vo.getMbr_no() != null && !vo.getMbr_no().equals("")) {
//			successCnt = 1;
//			session.setAttribute("usrSesn", vo);
//		}
//		out.print(successCnt);
//	
//
//	scan
//		int count = 0;
//		if(count == 1) {
//			
//		} else if (count == 2) {
//			
//		}
//		proVO = service.project_detail(proVO);
//		ivVO = service.invest_detail(ivVO);
//		model.addAttribute("projectVO", proVO);
//		model.addAttribute("investVO", ivVO);
//		return "mypage/my_invest_list";
//	}
	
	@RequestMapping(value = "/my_loan_list", method = RequestMethod.GET)
	public String my_loan_list() {
		logger.info("my_loan_list");
				
		return "mypage/my_loan_list";
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




