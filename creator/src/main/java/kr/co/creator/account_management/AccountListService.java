package kr.co.creator.account_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountListService {

	@Autowired
	AccountListDAO dao;

	public void account_list() {
		dao.account_list();
	}
}//class