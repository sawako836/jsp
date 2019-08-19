package kr.or.ddit.prod.repository;

import java.util.List;

import kr.or.ddit.prod.model.ProdVo;

public interface IProdDao {
	
	/**
	* Method : getProdList
	* 작성자 : HDE
	* 변경이력 :
	* @param lprod_gu
	* @return
	* Method 설명 : 제품 리스트 조회
	*/
	List<ProdVo> getProdList(String lprod_gu);
}
