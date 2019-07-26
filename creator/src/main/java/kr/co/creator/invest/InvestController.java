package kr.co.creator.invest;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Controller
public class InvestController {
	
	private static final Logger logger = LoggerFactory.getLogger(InvestController.class);
	
	@Autowired
	InvestService investService;
	
//	@RequestMapping(value = "/invest", method = RequestMethod.GET)
//	public String invest(Model model, AccountVO vo) {
//		logger.info("invest");
//
//		System.out.println("Controller1111111111 : " + vo);
//		vo = investService.invest(vo);
//		System.out.println("Controller2222222222 : " + vo);
//		model.addAttribute("accountVO", vo);
//		
//		return "invest/invest";
//	}//invest
	
	@RequestMapping(value = "/invest", method = RequestMethod.GET)
	public String invest(Model model, MemberVO memberVO, AccountVO accVO, ProjectVO proVO) {
		logger.info("invest");
		
		if(memberVO == null || memberVO.getUser_num().equals("") || memberVO.getBusi_num().equals("")) {
			return "login/login";
		}
		System.out.println("Controller1111111111 : " + accVO);
		accVO = investService.acount_detail(accVO);
		proVO = investService.project_detail(proVO);
		System.out.println("Controller2222222222 : " + accVO);
		model.addAttribute("accountVO", accVO);
		model.addAttribute("projectVO", proVO);
		
		return "invest/invest";
	}//invest
	
	@RequestMapping(value = "/invest_guide", method = RequestMethod.GET)
	public String invest_guide() {
		logger.info("invest_guide");
		
		return "invest/invest_guide";
	}//invest_guide
	
	@RequestMapping(value = "/invest_list", method = RequestMethod.GET)
	public String invest_list(Model model) {
		logger.info("invest_list");
		
		List<ProjectVO> list = null;
		list = investService.invest_list();
		model.addAttribute("investList", list);
		
		return "invest/invest_list";
	}//invest_list
	
	@RequestMapping(value = "/invest_detail", method = RequestMethod.GET)
	public String invest_detail(Model model, HttpSession session, ProjectVO proVO, GuaranteeVO guaVO, InvestVO inVO) {
		logger.info("invest_detail");
		
		proVO = investService.project_detail(proVO);
		guaVO = investService.guarantee_detail(proVO, guaVO);
		System.out.println("Controller1111111111111111111111111111111 : " + inVO);
		inVO  = investService.invest_detail(inVO);
		
		model.addAttribute("projectVO", proVO);
		model.addAttribute("guaranteeVO", guaVO);
		session.setAttribute("sess_investVO", inVO);
		//System.out.println("Controller2222222222222222222222222222222 : " + inVO.getInvest_price());
		//System.out.println("Controller2222222222222222222222222222222 : " + ((InvestVO)session.getAttribute("sess_investVO")).getInvest_price());
		return "invest/invest_detail";
	}//invest_detail
	
	@RequestMapping(value = "/invest_finished", method = RequestMethod.GET)
	public String invest_finished(Model model) {
		logger.info("invest_finished");
		
		List<ProjectVO> list = null;
		list = investService.invest_finished();
		model.addAttribute("investFinished", list);
		
		return "invest/invest_finished";
	}//invest_finish
	
	@RequestMapping(value = "/deposit_update", method = RequestMethod.POST)
	public void deposit_update(Model model, PrintWriter out, AccountVO accVO) {
		logger.info("deposit_update");
		
		System.out.println("Controller1111111111 : " + accVO);
		int count = 0;
		count = investService.deposit_update(accVO);
		out.print(count);
		//out.flush();
		out.close();
	}//deposit_update
	
	@RequestMapping(value = "/invest_finish", method = RequestMethod.GET)
	public String invest_finish(Model model,MemberVO memberVO, AccountVO accVO) {
		logger.info("invest_finish");
		if(memberVO == null || memberVO.getUser_num().equals("") || memberVO.getBusi_num().equals("")) {
			return "login/login";
		}
		accVO = investService.acount_detail(accVO);
		accVO = investService.acount_detail(accVO);
		model.addAttribute("accountVO", accVO);
		return "invest/invest_finish";
	}//invest_finish
}//class