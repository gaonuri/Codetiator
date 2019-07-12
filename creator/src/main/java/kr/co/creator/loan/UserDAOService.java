package kr.co.creator.loan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.UserVO;

@Service
public class UserDAOService {

	@Autowired
	UserDAO dao;
	
	public int insertMember(UserVO vo) {
		int count = 0;
		System.out.println(vo);
		count = dao.insertMember(vo);
		return count;
	}
	
	public int userCheck(UserVO vo) {
		int count = 0;
		count = dao.userCheck(vo);
		return count;
	}
	
	public UserVO memberInfo(UserVO vo) {
		vo = dao.memberInfo(vo);
		return vo;
	}
	
	public int deleteMember(UserVO vo) {
		int count = 0;
		count = dao.deleteMember(vo);
		return count;
	}
	
	
}
