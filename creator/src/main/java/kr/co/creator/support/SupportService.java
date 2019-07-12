package kr.co.creator.support;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SupportService {

	@Autowired
	SupportDAO dao;

	public void faq() {
		
	}

	public void support() {
		dao.support();
	}

}//class