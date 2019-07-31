package kr.co.creator.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.ProjectVO;

@Service
public class MainService {

	@Autowired
	MainDAO mainDAO;

	public List<ProjectVO> project_list1() {
		List<ProjectVO> list1 = mainDAO.project_list1();

		return list1;
	}//project_list1

	public List<ProjectVO> project_list2() {
		List<ProjectVO> list2 = mainDAO.project_list2();

		return list2;
	}//project_list2
	
	public List<ProjectVO> project_list3() {
		List<ProjectVO> list3 = mainDAO.project_list3();

		return list3;
	}//project_list3
}//class