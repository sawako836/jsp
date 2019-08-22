package kr.or.ddit.prod.repository;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.dao.LprodDaoTest;
import kr.or.ddit.lprod.model.Lprod;
import kr.or.ddit.prod.model.Prod;

public class ProdDaoTest {

	/**
	* Method : testGetProdList
	* 작성자 : SEM-PC
	* 변경이력 :
	* Method 설명 : 제품 리스트 조회 테스트
	*/
	@Test
	public void testGetProdList() {
		/***Given***/
		IProdDao prodDao = new ProdDao();
		String lprod_gu ="P101";
				
		/***When***/
		List<Prod> prodList = prodDao.getProdList(lprod_gu);

		/***Then***/
		assertEquals(6, prodList.size());
	}
	
}
