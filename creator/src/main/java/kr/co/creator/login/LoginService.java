package kr.co.creator.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

	@Autowired
	LoginDAO dao;

	public void login() {
		dao.login();
	}
}//class