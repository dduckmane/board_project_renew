<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🍴Matjip</title>
  <link rel="stylesheet" href="CSS/signup.css">
</head>

<body>
  <!--   1-->
  <h1>
    <a href="index.jsp">🍴Matjip</a>
  </h1>

  <form action="" style="border:1px solid #ccc">
    <div class="container">
      <h1>회원가입</h1>
      <p>계정을 만들려면 이 양식을 작성하십시오.</p>
      <hr>
  

      <label for="name"><b>이름</b></label>
      <input type="text" placeholder="이름 입력" name="name" required>

      <label for="uname"><b>아이디</b></label>
      <input type="text" placeholder="아이디 입력" name="uname" required>

      <label for="email"><b>이메일</b></label>
      <input type="text" placeholder="이메일 입력" name="email" required>
  
      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="비밀번호 입력" name="psw" required>
  
      <label for="psw-repeat"><b>비밀번호 재확인</b></label>
      <input type="password" placeholder="비밀번호 재확인" name="psw-repeat" required>
  

  
      <div class="clearfix">
        <button type="submit" class="signupbtn">가입하기</button>
      </div>
    </div>
  </form>
  
  <!--   3-->
  <footer>
    <address>
      &copy; foot
    </address>
  </footer>

</body>

</html>








