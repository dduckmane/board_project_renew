<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🍴Matjip</title>
  <link rel="stylesheet" href="CSS/login.css">
</head>

<body>
  <!--   1-->
  <h1>
    <a href="index.jsp">🍴Matjip</a>
  </h1>

  <form action="" method="">
    
  
    <div class="container">

        <h1>아이디 찾기</h1>
        

        <label for="name"><b>이름</b></label>
        <input type="text" placeholder="이름 입력" name="name" required>

  
        <label for="email"><b>이메일</b></label>
        <input type="text" placeholder="이메일 입력" name="email" required>
  
        
      <button type="submit">메일 보내기</button>
      <!-- <label>
        <input type="checkbox" checked="checked" name="remember"> 로그인 상태유지
      </label> -->
    </div>
  
    
  </form>
  
  
<!--    <aside>-->
<!--      <div class="login-box">로그인박스</div>-->
<!--      <div class="mini-banner"></div>-->
<!--    </aside>-->
  
  <!--   3-->
  <footer>
    <address>
      &copy; foot
    </address>
  </footer>

</body>

</html>

