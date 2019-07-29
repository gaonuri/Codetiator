package kr.co.creator.member_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberManagementService {

	@Autowired
	MemberManagementDAO dao;

	public void user_mgt() {
		dao.user_mgt();
	}
}//class