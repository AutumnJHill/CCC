<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
<style type="text/css">

     <style>
        .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            background: #ffc0cb !important;
            width:80%;
            height:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        table * {margin:5px;}
        table {width:100%;}
    </style>		

</head>
<body>

		<jsp:include page="/WEB-INF/views/common/header.jsp"/> 
		<br><br><br><br><br><br><br><br><br><br>
		<div class="orderdetail content">
		<div class="innerOuter">
		<h3 align="center">캐릭터 수정</h3>
		    <br><br>
			<form id="updateForm" method="post"  action="update.my" enctype="multipart/form-data">
				<table align="center">
					<!-- 히든으로 캐릭터 번호 넘기기 -->
					<input type="hidden" name="characterNo" value="${cha.characterNo}">
					<tr>
						<th>캐릭터명</th>
						<td>
							<input type="text" name="characterName" value="${cha.characterName}">
						</td>
					</tr>
					<tr>
						<th>캐릭터내용</th>
						<td >
							<input style="width: 50%; height: 200px;" type="text" name="characterContent" value="${cha.characterContent}">
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
			   </table>
			   
				<br><br><br><br>	
				<!-- 파일첨부영역 -->
			    <table>
					<tr>
						<th width=100px;><h5>첨부파일</h5></th>
						<td>
							<div id="file-area" align="center">
							    <input type="file" id="file1" name="titleImg"  placeholder="썸네일" value="썸네일" style="padding-bottom:8px;" required><br>
								<input type="file" id="file2" name="upfileList" style="padding-bottom:8px;" required><br>
								<input type="file" id="file3" name="upfileList" style="padding-bottom:8px;" required><br>
								<input type="file" id="file4" name="upfileList" style="padding-bottom:8px;" required><br>
							</div>
						</td>
					</tr>
				</table>				

                <br><br><br>
                <table style="margin-left: 10%;">
					 <h5>현재 업로드된 파일 :</h5>
					 <tr>
					   <td> 
						<c:if test="${ not empty mchalist }">
							<c:forEach var="mca" items="${ mchalist}">	
								<img src="${ mca.changeName }" download="${ mca.originName }" width="200" height="200"></a>  
								<input type="hidden" name="originName" value="${mca.originName}">  
								<input type="hidden" name="changeName" value="${mca.changeName}">                     												
							</c:forEach>
						</c:if>
					</td>
				  </tr>
				  <tr>
				  </tr>
			   </table>
		   
			   <br><br><br>
			   <div class="buttonArea" align="center">
			   <button type="submit">수정</button>
			   <button onclick="location.href='list.mychar'">목록</button>
			   </div>
		   </form>
	   </div>   
	   <br><br><br><br><br><br><br><br>
      </div>
   
</body>
</html>