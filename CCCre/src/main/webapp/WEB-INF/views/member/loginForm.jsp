<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/loginForm.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">

</head>
<body>

    <br><br><br><br><br><br><br>
    <div class="loginarea">
        <div class="wrapper bg-white">
            <div class="h2 text-center" style="font-size: xx-large;" >C C C</div>
            <div class="h4 text-muted text-center pt-2">로그인</div>
            <form class="pt-3" action="login.me">
                <div class="form-group py-2">
                    <div class="input-field">
                        <span class="far fa-user p-2"></span>
                        <input type="text" name="memberId" placeholder="아이디" required class=""> </div>
                </div>
                <div class="form-group py-1 pb-2">
                    <div class="input-field">
                        <span class="fas fa-lock p-2"></span>
                        <input type="password" name="memberPwd" placeholder="비밀번호" required class="">
                        <button class="btn bg-white text-muted">
                            <span class="far fa-eye-slash"></span> </button> </div>
                </div>
                <div class="d-flex align-items-.start">
                    <div class="remember"> <label class="option text-muted"> 아이디저장 <input type="radio"
                                name="radio">
                            <span class="checkmark"></span> </label> </div>
                    <div class="ml-auto"> <a href="#" id="forgot"></a> </div>
                </div><button class="btn btn-block text-center my-3">로그인</button>
                <div class="text-center pt-3 text-muted">
                <a href="enrollForm.me">회원가입</a><br>
                <br>
                <a href="https://kauth.kakao.com/oauth/authorize?client_id=27effd9933855e4080380c023c27eaf2&redirect_uri=http://localhost:9000/ccc/oauth&response_type=code"><img src="resources/image/kakao_login.png"></a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>