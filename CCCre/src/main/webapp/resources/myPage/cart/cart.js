

	//체크박스 설정
			//      $(function() {
			//		 var chkObj=document.getElementsByName("RowCheck"); //개별선택 체크박스   
			//		 var rowCnt=chkObj.length; //개별선택 체크박스 개수
			//		 $("input[name='allCheck']").click(function() {//전체선택 체크박스를 선택했을때
			//			var chk_listArr=$("input[name='RowCheck']"); //개별체크박스 배열 []
			//			for(var i=0; i< chk_listArr.length; i++){ //개별체크박스 배열의 길이만큼, 선택된 개별체크박스를 체크상태로 만들어준다. 
			//				chk_listArr[i].checked=this.checked;
			//			}
			//		  });
					 
			//		 $("input[name='RowCheck']").click(function() {
			//			if ($("input[name='RowCheck']:checked").length==rowCnt){
			//				$("input[name='allCheck']")[0].checked=true;
			//			}else {
			//				$("input[name='allCheck']")[0].checked=false;
			//			}
			//		 });
			//	   });
        
             //수량변경 버튼클릭시 카트번호와 상품수량을 form에 넣는다.
        	 function modifybtn(cartNo) {
        		 //카트no는 버튼을 눌렀을시에 실행되는 함수에 담아서 가져오고 count는 input태그에서 가져오자
        		 console.log("cartNo : "+cartNo);
				let count = $(this).prev().find("input").val();
				console.log(count);
			}
	        
			 //수량수정버튼 클릭시
// 			 $(".quantity_modify_btn").on("click", function(){
// 				 let cartNo = $(this).val(); //변경버튼의 데이터 
// 				 //let count = $(this).parent("td").find("input").val(); //변경버튼 상위요소에서 input의 값(수량값)
// 				 console.log(cartNo);
// 				 //console.log(Count);
// 				 $(".update_cartNo").val(cartNo);
// 				 $(".update_quantity").val(Count);
// 				 $(".quantity_update_form").submit();
//              });
			 
		 
	         $(document).ready(function(){
	            //장바구니 총계산영역 
			    setTotalInfo();
	         });
	         
	         /*체크여부 변화에 따른 종합정보 변화*/
	         $(".individual_cart_checkbox").on("change", function(){
	        	/*총 주문정보 세팅*/
	        	//가격,개수,최종가격
	        	setTotalInfo($(".cart_info_td")); 
	         });
	         
	         /*전체체크박스에 따른 변화*/
	         $(".all_check_input").on("click",function(){
		    	   /* 체크박스 체크/해제 */
		    		if($(".all_check_input").prop("checked")){
		    			$(".individual_cart_checkbox").attr("checked", true);
		    			
		    		} else{
		    			$(".individual_cart_checkbox").attr("checked", false);
		    		}
		    	    //총 주문정보 세팅
		    		setTotalInfo($(".cart_info_td"));	
		       });  
	         
	         
	         /*체크여부에 따른 정보 변화 */
        	 function setTotalInfo() {
        		 
	        	  //만들어내야할 데이터를 담아낼 변수선언 후 0으로 초기화
	           	  let totalPrice=0;  //총가격
	           	  let totalCount=0;  //총개수
	           	  let deliveryPrice=0; //배송비
	           	  let finalTotalPrice=0; //최종가격(총가격+배송비)
	           	  
	           	  //cart_info_td식별자를 통해 td태그에 접근하여 find메소드로 정보가 저장된 input hidden태그에 접근한다.
	           	  //총가격 총개수 구함
	           	  //td태그를 순회하는 코드
	           	  $(".cart_info_td").each(function(index,element) {
	           		  
	           		  if ($(element).find(".individual_cart_checkbox").is(":checked")===true) {//체크여부
	           			  
	           			 //td태그를 순회해서 얻은 총개수
		           		 totalCount+=parseInt($(element).find(".individual_count_input").val());
	           		     
		           		 //td태그를 순회해서 얻은 총가격(input태그의 값을 얻어오면 string타입으로 인식되기 때문에 parseInt로 int타입으로 변경해줌)
		           		 totalPrice+=parseInt($(element).find(".individual_totalPrice_input").val());
		           		 
					   }
	           		  
	   			  });
	   			  
	   			  //배송비결정 총가격이 50000이상일때만 0원,그 이하는 3000(지역에 따라서도 다르게 부여해줄지 고민해보기)
	   			  if (totalPrice>=50000) {
	   				deliveryPrice=0;
	   				  
	   			  }else if(totalPrice == 0){
	   				deliveryPrice=0;
	   			
	   			  }else{
	   				deliveryPrice=3000;
	   			  }
	           	  
	   			  //최종가격=총가격+배송비
	   			  finalTotalPrice=totalPrice+deliveryPrice;
	   			  
	   			  //구한값 화면에 뿌리기
	   			  //통화형식으로 출력될수 있도록 대상변수에 toLocaleString()메서드를 호출한다.
	   			  //총가격
	   			  $(".totalPrice_td").text(totalPrice.toLocaleString());
	   			  
	   			  //총개수
	   			  $(".totalCount_td").text(totalCount);
	   			  
	   			  //배송비
	   			  $(".deliveryPrice_td").text(deliveryPrice);
	   			  
	   			  //최종가격(총가격+배송비)
	   			  $(".finalTotalPrice_td").text(finalTotalPrice.toLocaleString());	 
        		 
			  }
