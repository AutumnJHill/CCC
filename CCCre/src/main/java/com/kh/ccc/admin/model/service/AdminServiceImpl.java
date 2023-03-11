package com.kh.ccc.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.admin.model.dao.AdminDao;
import com.kh.ccc.admin.model.vo.OrderCount;
import com.kh.ccc.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int totalMember() {
		return adminDao.totalMember(sqlSession);
	}

	@Override
	public List<Member> memberList() {
		return adminDao.memberList(sqlSession);
	}

	@Override
	public int totalOrderCount() {
		return adminDao.totalOrderCount(sqlSession);
	}

	@Override
	public int quitMember() {
		return adminDao.quitMember(sqlSession);
	}

	@Override
	public ArrayList<OrderCount> dataSelect() {
		return adminDao.dataSelect(sqlSession);
	}
	
}
