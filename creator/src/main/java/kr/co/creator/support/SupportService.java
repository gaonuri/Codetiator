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
	
	public int supportInsert2(NoticeVO vo) {
		int count = 0;
		count = dao.supportInsert2(vo);
		return count;
	}

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

	public NoticeVO totalDetail(NoticeVO vo) {
		vo = dao.totalDetail(vo);
		return vo;
	}//totalDetail

	public NoticeVO newDetail(NoticeVO vo) {
		vo = dao.newDetail(vo);
		return vo;
	}//newDetail

	public NoticeVO operationDetail(NoticeVO vo) {
		vo = dao.operationDetail(vo);
		return vo;
	}//operationDetail

	
}//class