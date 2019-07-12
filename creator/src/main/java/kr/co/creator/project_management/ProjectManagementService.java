package kr.co.creator.project_management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectManagementService {

	@Autowired
	ProjectManagementDAO dao;

	public void project_current_list() {
		dao.project_current_list();
	}
}//class