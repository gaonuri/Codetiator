package kr.co.creator.support;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.NoticeVO;


@Controller
public class SupportController {
	
	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	@Autowired
	SupportService service;
	
//	@RequestMapping(value = "/faq", method = RequestMethod.GET)
//	public String faq() {
//		logger.info("faq");
//		
//		
//		return "support/faq";
//	}
//	
//	@RequestMapping(value = "/policy", method = RequestMethod.GET)
//	public String policy() {
//		logger.info("policy");
//		
//		return "support/policy";
//	}
//	
//	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
//	public String inquiry() {
//		logger.info("inquiry");
//				
//		return "support/inquiry";
//	}
//	
	@RequestMapping(value = "/support_total", method = RequestMethod.GET)
	public String support(Model model) {
		logger.info("support");
		List<NoticeVO> support = null;
		support = service.supportList();
		model.addAttribute("supportlist", support);
		return "support/support_total";
	}

	@RequestMapping(value = "/support_new", method = RequestMethod.GET)
	public String support2(Model model) {
		logger.info("support2");
		List<NoticeVO> support = null;
		support = service.supportList2();
		model.addAttribute("supportlist2", support);
		return "support/support_new";
	}
	
	@RequestMapping(value = "/support_operation", method = RequestMethod.GET)
	public String support3(Model model) {
		logger.info("support3");
		List<NoticeVO> support = null;
		support = service.supportList3();
		model.addAttribute("supportlist3", support);
		return "support/support_operation";
	}
	
	@RequestMapping(value="/support/formi"
			,method=RequestMethod.GET)
	public String formInsert() {
	logger.info("formInsert");
	return "support/form_insert";
	}//supportInsert
	
	@RequestMapping(value="/support/insert"
			,method=RequestMethod.POST)
	public void supportInsert(NoticeVO vo, PrintWriter out) {
	System.out.println("supportInsert");
	int count = 0;
	count = service.supportInsert(vo);
	logger.info("controller - count : "+count);
	out.print(count);
	out.flush();
	out.close();
	}//boardInsert
	
	
	
	@RequestMapping(value="/support_total_detail"
			,method=RequestMethod.GET)
	public String supportDatail(NoticeVO vo, Model model) {
	logger.info("total_detail");
//	vo = service.totalDetail(vo);
	model.addAttribute("total_detailVO", vo);
	return "support/support_total_detail";
	}//support_total_detail
	
//	@RequestMapping(value="/support/formu"
//			,method=RequestMethod.GET)
//	public String formUpdate(NoticeVO vo, Model model) {
//	logger.info("supportUpdate");
//	vo = service.boardDetail(vo);
//	//CK image start============================
//	int imgYn = 0;
//	imgYn = vo.getCnts().indexOf("src=\"");
//	if(imgYn > 0) {//image in cnts
//	try {
//	FileUtilService.mvCKImgNewToTmp(
//			vo.getCnts(), vo.getNo());
//	} catch (IOException e) {
//	e.printStackTrace();
//	}//try
//	}//if
//	//CK image end============================
//	vo.setCnts(vo.getCnts().replaceAll("/"+vo.getNo()+"/"
//	, "/tmp/")
//	);
//	model.addAttribute("detailVO", vo);
//	return "board1/form_update";
//	}//formUpdate
//
//	
//	
//	@RequestMapping(value="/support/delete"
//			,method=RequestMethod.GET)
//	public void boardDelete(NoticeVO vo, PrintWriter out) {
//	logger.info("supportDelete");
//	//CK image delete start==================
//	FileUtilService.delCKImg(vo.getNo());
//	//CK image delete end==================
//	int count = 0;
//	count = service.supportDelete(vo);
//	out.print(count);
//	out.flush();
//	out.close();
//	}//boardDelete
	
	
}//class