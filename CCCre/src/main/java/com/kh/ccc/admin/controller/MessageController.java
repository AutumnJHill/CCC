package com.kh.ccc.admin.controller;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class MessageController{
	
  // Find your Account Sid and Token at twilio.com/user/account
  public static final String ACCOUNT_SID = "AC0cb7ac6f0cafbb8364c54af835505aa5";
  public static final String AUTH_TOKEN = "9b30818d8dfa9b3592730aae5cdbde74";

  public static void main(String[] args) {
    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

    Message message = Message.creator(
    	//to
    	new PhoneNumber("+821098793392"),
    	//from   
        new PhoneNumber("+17273619338"), 
        //message
        "메시지 전송테스트").create();

       System.out.println(message.getSid());
  }
}
