package kr.co.creator.support;

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
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String support(Model model, NoticeVO vo) {
		logger.info("support");
		List<NoticeVO> support = null;   // 전체
		List<NoticeVO> support2 = null;  // 새소식
		List<NoticeVO> support3 = null;  // 운영사항
		
		support = service.supportList();
		
		vo.setNotice_type("1");
		support2 = service.supportList2(vo);
		
		vo.setNotice_type("2");
		support3 = service.supportList2(vo);
		
		model.addAttribute("supportlist", support);
		model.addAttribute("supportlist2", support2);
		model.addAttribute("supportlist3", support3);
		return "support/support";
	}

	@RequestMapping(value="/formi"
			,method=RequestMethod.GET)
	public String formInsert() {
	logger.info("formInsert");
	return "support/form_insert";
	}//supportInsert
	
	@RequestMapping(value="/insert"
			,method=RequestMethod.POST)
	public void supportInsert(NoticeVO vo, PrintWriter out) {
	System.out.println("supportInsert");
	int count = 0;
	count = service.supportInsert(vo);
	logger.info("controller - count : "+count);
	out.print(count);
	out.flush();
	out.close();
	}//supportInsert
	
	@RequestMapping(value="/insert2"
			,method=RequestMethod.POST)
	public void supportInsert2(NoticeVO vo, PrintWriter out) {
	System.out.println("supportInsert");
	int count = 0;
	count = service.supportInsert2(vo);
	logger.info("controller - count : "+count);
	out.print(count);
	out.flush();
	out.close();
	}//boardInsert
	
	@RequestMapping(value="/support_detail", method=RequestMethod.GET)
	public String supportDatail(NoticeVO vo, Model model) {
		logger.info("supportDatail");
		if(vo.getNotice_type() == null) {
			vo = service.supportDetail(vo);
		} else {
			vo = service.supportDetailType(vo);
		}
		model.addAttribute("detailVO", vo);
		return "support/support_detail";
	}//support_detail
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public void supportDelete(NoticeVO vo, PrintWriter out) {
		logger.info("supportDelete");
		int count = 0;
		count = service.supportDelete(vo);
		out.print(count);
		out.flush();
		out.close();
	}//support_total_detail
	
	@RequestMapping(value="/privacy_policy" ,method=RequestMethod.GET)
	public String privacy_policy() {
	logger.info("privacy_policy");
	
	return "support/privacy_policy";
	}//policy
	
	@RequestMapping(value="/investor_terms_service" ,method=RequestMethod.GET)
	public String investor_terms_service() {
	logger.info("investor_terms_service");
	
	return "support/investor_terms_service";
	}//investor_terms_service
	

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