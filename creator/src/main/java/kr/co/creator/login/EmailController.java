package kr.co.creator.login;

import java.io.PrintWriter;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.creator.vo.UserVO;

@Controller
@RequestMapping("/login/*")
public class EmailController {
	
	@Inject
	EmailService emailService;
	
	@RequestMapping("/login/write")
	public String write() {
		return "/login/write";
	}
	
    // mailSending 코드
      @RequestMapping(value = "send.do")
      public String send(@ModelAttribute EmailDTO dto, Model model) {
       try {
    	   emailService.sendMail(dto);
    	   model.addAttribute("message", "메일이 발송되었습니다");
       } catch (Exception e) {
    	   e.printStackTrace();
    	   model.addAttribute("message", "메일 발송 실패!");
       }
       return "/write";
	}
    	  

}
      
      
      
      
      
      
      
      
      
      