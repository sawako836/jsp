package kr.or.ddit.lprod.repository;

import java.util.List;

import kr.or.ddit.lprod.model.LprodVo;

public interface LprodDao {
	List<LprodVo> getLprodList();
}
