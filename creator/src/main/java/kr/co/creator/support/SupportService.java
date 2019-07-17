package kr.co.creator.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.NoticeVO;

@Service
public class SupportService {

	@Autowired
	SupportDAO dao;

	public int supportInsert(NoticeVO vo) {
		int count = 0;
		count = dao.supportInsert(vo);
		return count;
	}//noticeInsert

	public List<NoticeVO> supportList() {
		List<NoticeVO> support = null;
		support = dao.supportList();
		return support;
	}//supportList

	public List<NoticeVO> supportList2() {
		List<NoticeVO> support = null;
		support = dao.supportList2();
		return support;
	}//supportList2
	
	public List<NoticeVO> supportList3() {
		List<NoticeVO> support = null;
		support = dao.supportList3();
		return support;
	}//supportList3

//	public NoticeVO totalDetail(NoticeVO vo) {
//		vo = dao.totalDetail(vo);
//		if(vo != null && vo.getFile_path() != null
//				&& !vo.getFile_path().equals("")) {
//			vo.setFile_name(
//				vo.getFile_path().substring(
//					vo.getFile_path().lastIndexOf("\\")+1
//				)
//			);
//		}//if
//		return vo;
//	}//totalDetail
}//class