<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>๐ดMatjip</title>
  <link rel="stylesheet" href="CSS/signup.css">
</head>

<body>
  <!--   1-->
  <h1>
    <a href="index.jsp">๐ดMatjip</a>
  </h1>

  <form action="" style="border:1px solid #ccc">
    <div class="container">
      <h1>ํ์๊ฐ์</h1>
      <p>๊ณ์ ์ ๋ง๋ค๋ ค๋ฉด ์ด ์์์ ์์ฑํ์ญ์์ค.</p>
      <hr>
  

      <label for="name"><b>์ด๋ฆ</b></label>
      <input type="text" placeholder="์ด๋ฆ ์๋ ฅ" name="name" required>

      <label for="uname"><b>์์ด๋</b></label>
      <input type="text" placeholder="์์ด๋ ์๋ ฅ" name="uname" required>

      <label for="email"><b>์ด๋ฉ์ผ</b></label>
      <input type="text" placeholder="์ด๋ฉ์ผ ์๋ ฅ" name="email" required>
  
      <label for="psw"><b>๋น๋ฐ๋ฒํธ</b></label>
      <input type="password" placeholder="๋น๋ฐ๋ฒํธ ์๋ ฅ" name="psw" required>
  
      <label for="psw-repeat"><b>๋น๋ฐ๋ฒํธ ์ฌํ์ธ</b></label>
      <input type="password" placeholder="๋น๋ฐ๋ฒํธ ์ฌํ์ธ" name="psw-repeat" required>
  

  
      <div class="clearfix">
        <button type="submit" class="signupbtn">๊ฐ์ํ๊ธฐ</button>
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








