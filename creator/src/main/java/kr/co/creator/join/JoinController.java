package kr.co.creator.join;

import java.io.IOException;
import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.UserVO;



@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	@Autowired
	JoinService joinService;
	
	@RequestMapping(value = "/joinemailchk", method = RequestMethod.POST)
	public void joinEmailChk(PrintWriter out, UserVO vo) throws IOException {
		logger.info("=== joinEmailChk ===");
//		logger.info(vo.getEmail());
		int cnt = 0;
		cnt = joinService.joinEmailChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//joinEmailChk
	
	@RequestMapping(value="/joinuser", method=RequestMethod.POST)
	public void joinUser(PrintWriter out, UserVO vo) {
		logger.info("=== joinUser ===");
		int successCnt = 0;
		successCnt = joinService.joinUser(vo);
		out.print(successCnt);
		out.flush();
		out.close();
	}//joinUser
	
	@RequestMapping(value="/joinbusi", method=RequestMethod.POST)
	public void joinBusi(PrintWriter out, Busi_userVO vo) {
		logger.info("=== joinBusi ===");
		int successCnt = 0;
		successCnt = joinService.joinBusi(vo);
		out.print(successCnt);
		out.flush();
		out.close();
	}//joinBusi
	
	@RequestMapping(value = "/joinlicensechk", method = RequestMethod.POST)
	public void joinLicenseChk(PrintWriter out, Busi_userVO vo) throws IOException {
		logger.info("=== joinLicenseChk ===");
//		logger.info(vo.getEmail());
		int cnt = 0;
		cnt = joinService.joinLicenseChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//joinLicenseChk
	
	@RequestMapping(value = "/joinmagemailchk", method = RequestMethod.POST)
	public void joinMagEmailChk(PrintWriter out, Busi_userVO vo) throws IOException {
		logger.info("=== joinMagEmailChk ===");
//		logger.info(vo.getEmail());
		int cnt = 0;
		cnt = joinService.joinMagEmailChk(vo);
		out.print(cnt);
		out.flush();
		out.close();
	}//joinMagEmailChk
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		logger.info("join");
		return "join/join";
	}
}