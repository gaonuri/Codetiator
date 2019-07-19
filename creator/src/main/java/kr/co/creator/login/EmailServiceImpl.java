package kr.co.creator.login;

import javax.inject.Inject;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;

public class EmailServiceImpl implements EmailService {
	
	@Inject
	JavaMailSender mailSender; //  메일 발송 객체

	@Override
	public void sendMail(EmailDTO dto) {
		try {
			MimeMessage msg = mailSender.createMimeMessage(); //이메일 수신자
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiveMail()));//이메일 발신자
			msg.addFrom(new InternetAddress[] {
					new InternetAddress(dto.getSenderMail(), dto.getSenderName())
					});//이메일 제목
			msg.setSubject(dto.getSubject(), "utf-8");//이메일 본문
			msg.setText(dto.getMessage(), "utf-8");
			mailSender.send(msg); //전송
		} catch (Exception e) {
			e.printStackTrace();
		}//try
	}//sendMail
}//class
