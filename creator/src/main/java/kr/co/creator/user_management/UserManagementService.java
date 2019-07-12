package kr.co.creator.user_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserManagementService {

	@Autowired
	UserManagementDAO dao;

	public void investor_member_mgn() {
		dao.investor_member_mgn();
	}
}//class