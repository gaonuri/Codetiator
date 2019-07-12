package kr.co.creator.loan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoanService {

	@Autowired
	LoanDAO dao;

	public void loan() {
		dao.loan();
	}
}//class