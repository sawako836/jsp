package kr.or.ddit.lprod.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.model.Lprod;
import kr.or.ddit.util.MybatisUtil;

public class LprodService implements ILprodService{
	
	private ILprodDao lprodDao;
	
	public LprodService() {
		lprodDao = new LprodDao();
	}
	
	/**
	 * 
	* Method : getLprodPagingList
	* 작성자 : PC-04
	* 변경이력 :
	* @param page
	* @return
	* Method 설명 : 제품그룹 페이징 리스트 조회
	 */
	@Override
	public Map<String, Object> getLprodPagingList(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		SqlSession sqlSession = MybatisUtil.getSession();
		
		List<Lprod> lprodList = lprodDao.getLprodPagingList(sqlSession, page);
		int totalCnt = lprodDao.getLprodTotalCnt(sqlSession);
		
		map.put("lprodList", lprodList);
		map.put("paginationSize", (int)Math.ceil((double)totalCnt / page.getPagesize()));
		
		sqlSession.close();
		
		return map;
		
	}
}
