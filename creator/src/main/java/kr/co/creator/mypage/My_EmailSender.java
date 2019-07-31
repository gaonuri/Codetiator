package kr.co.creator.mypage;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.google.protobuf.Message;

import org.springframework.mail.javamail.JavaMailSender;

@Component
public class My_EmailSender {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(My_EmailForm emailForm) throws Exception{
		//메일 발송 기능 제공
		MimeMessage msg = mailSender.createMimeMessage();
		msg.setSubject(emailForm.getSubject()); //메일 제목
		msg.setText(emailForm.getContent()); //메일 내용
		msg.setRecipient(RecipientType.TO, new InternetAddress(emailForm.getReceiver()));
		mailSender.send(msg);
	}
}
