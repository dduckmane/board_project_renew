<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🍴Matjip</title>
  <link rel="stylesheet" href="CSS/viewpage.css">
</head>

<body>
  <!--   1-->
  <header class="header-wrap clearfix">
    <div class="container">
      <h1>
        <a href="index.jsp">🍴Matjip</a>
      </h1>
      <div class="serch">
        <input type="text" class="serch_input" placeholder="지역, 식당 또는 음식">
        <button class="serch_button">검색</button>
      </div>
      <nav class="tnb">
        <div class="menu-btn">
          <a href="#">
            <img src="img/menu-btn.png" alt="">
          </a>
        </div>
        <div class="tnb-menu">
          <a href="login.jsp">로그인</a>
          <a href="signup.jsp">회원가입</a>
        </div>
      </nav>
    </div>
  </header>
  <!--   2-->
  <!-- Images used to open the lightbox -->
<div class="row">
  <div class="column">
    <img src="img/img1.jpg" onclick="openModal();currentSlide(1)" class="hover-shadow">
  </div>
  <div class="column">
    <img src="img/img2.jpg" onclick="openModal();currentSlide(2)" class="hover-shadow">
  </div>
  <div class="column">
    <img src="img/img3.jpg" onclick="openModal();currentSlide(3)" class="hover-shadow">
  </div>
  <div class="column">
    <img src="img/img4.jpg" onclick="openModal();currentSlide(4)" class="hover-shadow">
  </div>
</div>

<!-- The Modal/Lightbox -->
<div id="myModal" class="modal">
  <span class="close cursor" onclick="closeModal()">&times;</span>
  <div class="modal-content">

    <div class="mySlides">
      <div class="numbertext">1 / 4</div>
      <img src="img/img1.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">2 / 4</div>
      <img src="img/img2.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">3 / 4</div>
      <img src="img/img3.jpg" style="width:100%">
    </div>

    <div class="mySlides">
      <div class="numbertext">4 / 4</div>
      <img src="img/img4.jpg" style="width:100%">
    </div>

    <!-- Next/previous controls -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <!-- Caption text -->
    <div class="caption-container">
      <p id="caption"></p>
    </div>

    <!-- Thumbnail image controls -->
    <div class="column">
      <img class="demo" src="img/img1.jpg" onclick="currentSlide(1)" alt="Nature">
    </div>

    <div class="column">
      <img class="demo" src="img/img2.jpg" onclick="currentSlide(2)" alt="Snow">
    </div>

    <div class="column">
      <img class="demo" src="img/img3.jpg" onclick="currentSlide(3)" alt="Mountains">
    </div>

    <div class="column">
      <img class="demo" src="img/img4.jpg" onclick="currentSlide(4)" alt="Lights">
    </div>
  </div>
</div>

<!-- ==================================== -->

<!-- 가게 이름 & 평점 & 좋아요 -->

<header>
  <div class="restaurant_title_wrap">
    <span class="title">
      <h1 class="restaurant_name">이가네떡볶이</h1>
        <strong class="rate-point ">
          <span>4.3</span>
        </strong>

      <p class="branch"></p>
    </span>

    <div class="restaurant_action_button_wrap">

      <button class="review_writing_button" data-restaurant_key="SbwyE_ucHe">
        <i class="review_writing_button_icon"></i>
        <span class="review_writing_button_text">리뷰쓰기</span>
      </button>

      <div class="wannago_wrap">
        <button class="btn-type-icon favorite wannago_btn " data-restaurant_uuid="185963" data-action_id=""></button>
        <p class="wannago_txt">가고싶다</p>
      </div>
    </div>
  </div>

  <div class="status
    branch_none
    ">
    <span class="cnt hit">318,836</span>
    <span class="cnt review">193</span>
    <span class="cnt favorite">6,826</span>
  </div>
</header>


<!-- 가게 정보 테이블로 표현... -->

<table class="info
              no_menu
              ">
              <caption>레스토랑 상세 정보</caption>

              <tbody>
                <tr class="only-desktop">
                  <th>주소</th>
                  <td>부산광역시 중구 부평1길 48<br>
                        <span class="Restaurant__InfoAddress--Rectangle">지번</span>
                      <span class="Restaurant__InfoAddress--Text">부산시 중구 부평동2가 16</span>
                  </td>
                </tr>

                <tr class="only-desktop">
                  <th>전화번호</th>
                  <td>051-245-0413</td>
                </tr>

                <tr>
                  <th>음식 종류</th>
                  <td>
                    <span>기타 한식</span>
                  </td>
                </tr>

                <tr>
                  <th>가격대</th>
                  <td>만원 미만</td>
                </tr>

                <tr>
                  <th>주차</th>
                  <td>주차공간없음 </td>
                </tr>

                <tr>
                  <th style="vertical-align:top;">영업시간</th>
                  <td>10:00 - 17:00</td>
                </tr>



                <tr>
                  <th>휴일</th>
                  <td>일</td>
                </tr>

                <tr>
                  <th>웹 사이트</th>
                  <td>
                    <!-- <a href="#" class="under_line" target="_blank" style="color: black;" onclick="trackEvent('CLICK_RESTO_WEBSITE', {&quot;restaurant_key&quot;:&quot;SbwyE_ucHe&quot;})"></a> -->
                    <a href="#" class="under_line" target="_blank" style="color: black;" onclick="trackEvent('CLICK_RESTO_WEBSITE')">
                      식당 홈페이지로 가기
                    </a>
                  </td>
                </tr>

                <tr>
                  <th>메뉴</th>
                  <td class="menu_td">
                    <ul class="Restaurant_MenuList">
                        <li class="Restaurant_MenuItem">
                          <span class="Restaurant_Menu">떡볶이튀김세트</span>
                            <span class="Restaurant_MenuPrice">3,500원</span>
                        </li>
                        <li class="Restaurant_MenuItem">
                          <span class="Restaurant_Menu">떡볶이 (1인)</span>
                            <span class="Restaurant_MenuPrice">3,500원</span>
                        </li>
                        <li class="Restaurant_MenuItem">
                          <span class="Restaurant_Menu">튀김 (1인)</span>
                            <span class="Restaurant_MenuPrice">3,500원</span>
                        </li>
                    </ul>
                  </td>
                </tr>

              </tbody>
            </table>



  <!--   3-->
  <footer>
    <address>
      &copy; foot
    </address>
  </footer>

</body>

</html>



<!-- 사진 모달에 대한 자바스크립트 -->

<script>
  // Open the Modal
  function openModal() {
    document.getElementById("myModal").style.display = "block";
  }
  
  // Close the Modal
  function closeModal() {
    document.getElementById("myModal").style.display = "none";
  }
  
  var slideIndex = 1;
  showSlides(slideIndex);
  
  // Next/previous controls
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }
  
  // Thumbnail image controls
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
  
  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    captionText.innerHTML = dots[slideIndex-1].alt;
  }
  </script>




