package kr.co.creator.support;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.NoticeVO;

@Repository
public class SupportDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int supportInsert(NoticeVO vo) {
		System.out.println("dao - supportInsert");
		int count = 0;
		count = sqlSession.insert("SupportMapper.supportInsert", vo);
		System.out.println("dao - count : "+ count);
		return count;
	}//noticeInsert
	
	public int supportInsert2(NoticeVO vo) {
		System.out.println("dao - supportInsert2");
		int count = 0;
		count = sqlSession.insert("SupportMapper.supportInsert2", vo);
		System.out.println("dao - count : "+ count);
		return count;
	}//supportInsert2

	public List<NoticeVO> supportList() {
		List<NoticeVO> support = null;
		support = sqlSession.selectList("SupportMapper.supportList");
		return support;
	}//supportList
	
	public List<NoticeVO> supportList2(NoticeVO vo) {
		List<NoticeVO> support = null;
		support = sqlSession.selectList("SupportMapper.supportList2", vo.getNotice_type());
		return support;
	}//supportList2
	
	public NoticeVO supportDetail(NoticeVO vo) {
		vo = sqlSession.selectOne("SupportMapper.supportDetail", vo);
		return vo;
	}//totalDetail
	
	public NoticeVO supportDetailType(NoticeVO vo) {
		vo = sqlSession.selectOne("SupportMapper.supportDetailType", vo);
		return vo;
	}//supportDatailType

	public int supportDelete(NoticeVO vo) {
		int count = 0;
		count = sqlSession.delete("SupportMapper.supportDelete", vo);
		return count;
	}

	
}//class