package kr.or.ddit.lprod.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.util.MybatisUtil;

public class LprodDaoTest implements LprodDao {

	/**
	 * 
	* Method : getLprodList
	* 작성자 : PC-04
	* 변경이력 :
	* @return
	* Method 설명 : lprod 전체 리스트 조회
	 */
	@Override
	public List<LprodVo> getLprodList() {
		SqlSession sqlSession = MybatisUtil.getSession();
		List<LprodVo> lprodlist = sqlSession.selectList("lprod.getLprodList");
		sqlSession.close();
		
		return lprodlist;
	}

}
