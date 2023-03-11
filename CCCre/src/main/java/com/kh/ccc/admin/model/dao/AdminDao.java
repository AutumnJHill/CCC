package com.kh.ccc.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.admin.model.vo.OrderCount;
import com.kh.ccc.member.model.vo.Member;

@Repository
public class AdminDao {

	public int totalMember(SqlSessionTemplate sqlSession){
		return sqlSession.selectOne("adminMapper.totalMember");
	}

	public int quitMember(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.quitMember");
	}
	
	public List<Member> memberList(SqlSessionTemplate sqlSession){
		return sqlSession.selectList("memberMapper.memberList");
	}

	public int totalOrderCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.totalOrderCount");
	}

	public ArrayList<OrderCount> dataSelect(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.dataSelect");
	}
	
}
