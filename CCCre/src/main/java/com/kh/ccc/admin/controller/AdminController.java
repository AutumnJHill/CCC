package com.kh.ccc.admin.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.ccc.member.model.vo.Member;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
import com.google.gson.Gson;
import com.kh.ccc.admin.model.service.AdminService;
import com.kh.ccc.admin.model.vo.OrderCount;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	//
	
    //리스트 조회 + 회원수
	@RequestMapping("admin.ad")
	public String memberList(Model model) {
	
		//회원수
		int totalMember=adminService.totalMember();	
		System.out.println(totalMember);
		model.addAttribute("totalMember",totalMember);
		
		//탈퇴회원
		int quitMember=adminService.quitMember();
		model.addAttribute("quitMember",quitMember);
		//System.out.println(quitMember);
		
		//누적 주문수량
		int countOrder = adminService.totalOrderCount();
		//System.out.println(countOrder);		
		model.addAttribute("countOrder",countOrder);
		
		//리스트조회
		List<Member> memberList = adminService.memberList();
		//System.out.println(memberList);
		model.addAttribute("memberList",memberList);
			
	return "admin/adminPage";
	}
	
	
	//메시지리스트-----------------------------------------
	//메시지 페이지로 이동
	@RequestMapping("message.ad")
	public String messagePage(){
		return "admin/messagePage";
	}
	
	 public static final String ACCOUNT_SID = "AC0cb7ac6f0cafbb8364c54af835505aa5";
	 public static final String AUTH_TOKEN = "9b30818d8dfa9b3592730aae5cdbde74";
	
	//메세지전송
	@RequestMapping("sendMessage.ad")
	public String sendMessage(String phoneNumber,String text){
		
		String number=phoneNumber.substring(1);
		System.out.println(number);
		String context=text;
		System.out.println(context);
		
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

	    Message message = Message.creator(
    	//to
	    //new PhoneNumber("+82+1098793392"),
    	new PhoneNumber("+82"+number),
    	//from   
        new PhoneNumber("+17273619338"), 
        //message
        context).create();

	    System.out.println(message.getSid());
	    
	    return "admin/messagePage";
	}
	

	//	@ResponseBody
	//	@RequestMapping(value = "dataSelect.my", produces = "application/json;charset=UTF-8")
	//	public String dataSelect(HttpSession session) {
	//
	//		Member loginUser = (Member) session.getAttribute("loginUser");
	//		int memberNo = loginUser.getMemberNo();
	//
	//		// 요청처리
	//		ArrayList<MyCharacterData> cDataList = mypageService.dataSelect(memberNo);
	//
	//		return new Gson().toJson(cDataList);
	//
	//	}
	
	//좋아요 데이터 출력
	@ResponseBody
	@RequestMapping(value = "dataSelect.ad", produces = "application/json;charset=UTF-8")
	public String dataSelect( ) {

		// 요청처리
		ArrayList<OrderCount> dataList = adminService.dataSelect();
		System.out.println(dataList);
		return new Gson().toJson(dataList);
	}
	
	
	
}
