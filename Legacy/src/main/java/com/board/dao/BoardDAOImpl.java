package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sql;
	
	// private static String namespace = "com.board.mappers.board";
	
	// 게시물 목록
	@Override
	public List<BoardVO> selectList() throws Exception {
		return sql.selectList("board.selectList");
	}

}
