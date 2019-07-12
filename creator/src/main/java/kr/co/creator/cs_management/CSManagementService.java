package kr.co.creator.cs_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CSManagementService {

	@Autowired
	CSManagementDAO dao;

	public void notice_mgn() {
		dao.notice_mgn();
	}
}//class