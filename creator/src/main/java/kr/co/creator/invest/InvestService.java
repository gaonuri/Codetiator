package kr.co.creator.invest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InvestService {

	@Autowired
	InvestDAO dao;

	public void invest() {
		dao.invest();
	}
}//class