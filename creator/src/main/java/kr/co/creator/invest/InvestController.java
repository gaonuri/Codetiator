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
//import kr.co.koitt.board1.BoardVO;
//import kr.co.koitt.tip.FileUtilService;

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
	

	
	@RequestMapping(value = "/invest_guide", method = RequestMethod.GET)
	public String invest_guide() {
		logger.info("invest_guide");
		
		return "invest/invest_guide";
	}//invest_guide
	
	@RequestMapping(value = "/invest_list", method = RequestMethod.GET)
	public String invest_list(Model model, ProjectVO proVO, ProjectVO proCalcVO, InvestVO inVO) {
		logger.info("invest_list");
		
		List<ProjectVO> list = null;
		list = investService.invest_list();
		proVO = investService.project_detail(proVO);
		proCalcVO = investService.project_calc();
		inVO = investService.invest_calc();
		model.addAttribute("investList", list);
		model.addAttribute("proVO", proVO);
		model.addAttribute("proCalcVO", proCalcVO);
		model.addAttribute("inVO", inVO);
		
		return "invest/invest_list";
	}//invest_list
	
	@RequestMapping(value = "/invest_list_old", method = RequestMethod.GET)
	public String invest_list_old(Model model, ProjectVO proVO) {
		logger.info("invest_list_old");
		
		List<ProjectVO> list = null;
		list = investService.invest_list();
		proVO = investService.project_detail(proVO);
		model.addAttribute("investList", list);
		model.addAttribute("proVO", proVO);
		
		return "invest/invest_list_old";
	}//invest_list_old
	
	@RequestMapping(value = "/invest_detail", method = RequestMethod.GET)
	public String invest_detail(Model model, HttpSession session, ProjectVO proVO, GuaranteeVO guaVO, InvestVO inVO) {
		logger.info("invest_detail");
		
		proVO = investService.project_detail(proVO);
		guaVO = investService.guarantee_detail(guaVO);
		inVO  = investService.invest_detail(inVO);
					
		model.addAttribute("proVO", proVO);
		model.addAttribute("guaVO", guaVO);
		session.setAttribute("inVO", inVO);
		//System.out.println("Controller2222222222222222222222222222222 : " + inVO.getInvest_price());
		//System.out.println("Controller2222222222222222222222222222222 : " + ((InvestVO)session.getAttribute("sess_investVO")).getInvest_price());
		return "invest/invest_detail";
	}//invest_detail
	
	@RequestMapping(value = "/invest_detail_old", method = RequestMethod.GET)
	public String invest_detail_old(Model model, HttpSession session, ProjectVO proVO, GuaranteeVO guaVO, InvestVO inVO) {
		logger.info("invest_detail_old");
		
		proVO = investService.project_detail(proVO);
		guaVO = investService.guarantee_detail(guaVO);
		inVO  = investService.invest_detail(inVO);
					
		model.addAttribute("proVO", proVO);
		model.addAttribute("guaVO", guaVO);
		session.setAttribute("inVO", inVO);
		//System.out.println("Controller2222222222222222222222222222222 : " + inVO.getInvest_price());
		//System.out.println("Controller2222222222222222222222222222222 : " + ((InvestVO)session.getAttribute("sess_investVO")).getInvest_price());
		return "invest/invest_detail_old";
	}//invest_detail_old
	
	@RequestMapping(value = "/invest_detail2", method = RequestMethod.GET)
	public String invest_detail2(Model model, HttpSession session, ProjectVO proVO, GuaranteeVO guaVO, InvestVO inVO) {
		logger.info("invest_detail2");
		
		proVO = investService.project_detail(proVO);
		guaVO = investService.guarantee_detail(guaVO);
		inVO  = investService.invest_detail(inVO);
		
		model.addAttribute("proVO", proVO);
		model.addAttribute("guaVO", guaVO);
		session.setAttribute("inVO", inVO);
		
		return "invest/invest_detail2";
	}//invest_detail_new
	
	@RequestMapping(value = "/invest", method = RequestMethod.GET)
	public String invest(HttpSession session, Model model, MemberVO memVO, AccountVO accVO, ProjectVO proVO) {
		logger.info("invest");
		
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		System.out.println("Controller1111111111 : " + accVO);
		accVO = investService.acount_detail(accVO);
		proVO = investService.project_detail(proVO);
		System.out.println("Controller2222222222 : " + accVO);
		model.addAttribute("accVO", accVO);
		model.addAttribute("proVO", proVO);
		
		return "invest/invest";
	}//invest
	
	@RequestMapping(value = "/invest2", method = RequestMethod.GET)
	public String invest2(HttpSession session, Model model, MemberVO memVO, AccountVO accVO, ProjectVO proVO) {
		logger.info("invest2");
		
		if(session.getAttribute("memVO") == null) {
			return "redirect:/login";
		}
		System.out.println("Controller1111111111 : " + accVO);
		accVO = investService.acount_detail(accVO);
		proVO = investService.project_detail(proVO);
		System.out.println("Controller2222222222 : " + accVO);
		model.addAttribute("accVO", accVO);
		model.addAttribute("proVO", proVO);
		
		return "invest/invest2";
	}//invest
	
	@RequestMapping(value = "/invest_finished", method = RequestMethod.GET)
	public String invest_finished(Model model, ProjectVO proVO, ProjectVO proCalcVO, InvestVO inVO) {
		logger.info("invest_finished");
		
		List<ProjectVO> list = null;
		list = investService.invest_finished();
		proVO = investService.project_detail(proVO);
		proCalcVO = investService.project_calc();
		inVO = investService.invest_calc();
		model.addAttribute("investFinished", list);
		model.addAttribute("proVO", proVO);
		model.addAttribute("proCalcVO", proCalcVO);
		model.addAttribute("inVO", inVO);
		
		return "invest/invest_finished";
	}//invest_finish
	
	@RequestMapping(value = "/deposit_update", method = RequestMethod.POST)
	public void deposit_update(HttpSession session, Model model, PrintWriter out, AccountVO accVO, InvestVO inVO ,ProjectVO proVO) {
		logger.info("deposit_update");
		
		if(session.getAttribute("memVO") == null) {
			return;
		}
		int count = 0;
		count = investService.deposit_update(accVO);
		System.out.println("deposit_update_Controller111111111111111111111111111111 : " + accVO);
		count = count + investService.invest_price_insert(inVO);
		System.out.println("deposit_update_Controller444444444444444444444444444444 : " + accVO);
		count = count + investService.current_price_update(proVO);
		out.print(count);
		//out.flush();
		out.close();
	}//deposit_update
	
	@RequestMapping(value = "/invest_finish", method = RequestMethod.GET)
	public String invest_finish(Model model,MemberVO memberVO, AccountVO accVO, ProjectVO proVO) {
		logger.info("invest_finish");
//		if(memberVO == null || memberVO.getUser_num().equals("") || memberVO.getBusi_num().equals("")) {
//			return "login/login";
//		}
		accVO = investService.acount_detail(accVO);
		model.addAttribute("accountVO", accVO);
		proVO = investService.project_detail(proVO);
		model.addAttribute("accVO", accVO);
		model.addAttribute("proVO", proVO);
		return "invest/invest_finish";
	}//invest_finish
	
//	@RequestMapping(value="/board1/insert4", method=RequestMethod.POST)
//	@Transactional
//	public void boardInsert4(BoardVO vo
//									, PrintWriter out) {
//		logger.info("boardInsert4");
//		int count = 0;
//		count = service.boardInsert(vo);
//		//CK image start============================
//		int imgYn = 0;
//		imgYn = vo.getCnts().indexOf("src=\"");
//		if(imgYn > 0) {//image in cnts
//			try {
//				FileUtilService.mvCKImgTmpToNew(
//						vo.getCnts(), vo.getNo());
//			} catch (IOException e) {
//				out.print(0);
//				out.flush();
//				out.close();
//				e.printStackTrace();
//				return;
//			}//try
//		}//if
//		//CK image end============================
//		vo.setCnts(vo.getCnts().replaceAll("/tmp/", "/"+vo.getNo()+"/"));
//		count = service.boardUpdate(vo);
//		out.print(count);
//		out.flush();
//		out.close();
//	}//boardInsert4
}//class