<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .content {
            background-color:rgb(247, 245, 245);
            width:80%;
            margin:auto;
        }
        .innerOuter {
            border:1px solid lightgray;
            width:80%;
            margin:auto;
            padding:5% 10%;
            background-color:white;
        }

        #enrollForm>table {width:100%;}
        #enrollForm>table * {margin:5px;}
    </style>
</head>
<body>
        
    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>메시지 전송하기</h2>
            <br>

            <form id="enrollForm" method="post" action="sendMessage.ad">
                <table algin="center">
                    <tr>
                        <th><label for="title">회원번호</label></th>
                        <td><input type="text" id="title" class="form-control" name="phoneNumber" placeholder="01012341234" required></td>
                    </tr>
                    <tr>
                        <th><label for="content">내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="text" required></textarea></td>
                    </tr>
                </table>
                <br>

                <div align="center">
                    <button type="submit" class="btn btn-primary">전송하기</button>
                    <button onclick="location.href='admin.ad'" class="btn btn-danger">관리자페이지로</button>
                </div>
            </form>
        </div>
        <br><br>

    </div>
    
</body>
</html>