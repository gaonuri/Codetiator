package kr.co.creator.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {

	@Autowired
	MainDAO dao;

	public void main() {
		dao.main();
	}
}//class