package com.kh.ccc.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.ccc.admin.model.vo.OrderCount;
import com.kh.ccc.member.model.vo.Member;

@Service
public interface AdminService{
	
	//총멤버리스트
	int totalMember();

	//멤버리스트
	List<Member> memberList();

	//총 주문수
	int totalOrderCount();

	//탈퇴회원수
	int quitMember();

	//데이터 주문조회
	ArrayList<OrderCount> dataSelect();

}
