<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
        integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"
        integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/app.css">
  <title>🍴Matjip</title>




</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #c4c4c4e3;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">🍴Matjip</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="nav me-auto">

        <li class="nav-item active"><a href="/user/board/list/1" class="nav-link link-light px-2 active">한식</a></li>
        <li class="nav-item"><a href="/user/board/list/2" class="nav-link link-light px-2 active">양식</a></li>
        <li class="nav-item"><a href="/user/board/list/3" class="nav-link link-light px-2 active">중식</a></li>
        <li class="nav-item"><a href="/user/board/list/4" class="nav-link link-light px-2 active">일식</a></li>

      </ul>

      <ul class="nav">

        <li class="nav-item"><a href="#" class="nav-link link-light px-2">로그인</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-light px-2">회원가입</a></li>

      </ul>

    </div>
  </div>
</nav>

<div class="b-example-divider"></div>


<section id="top">
  <div class="section-content overlay d-flex justify-content-center align-items-center">
    <div class="container-xxl">
      <div class="row align-items-center">
        <div class="col-md-9 welcome main-title">
          <h1 class="welcome-title fw-light">솔직한 리뷰, 믿을 수 있는 평점!</h1>
          <div class="divider"></div>
          <div class="row welcome-desc">
            <p class="col-col-sm-10 col-md-12 lead">믿고 보는 맛집 리스트, 지역별 인기 맛집, 세계음식 맛집 리스트를 소개 합니다.</p>
            <p class="col-col-sm-10 col-md-12 lead">김민성의 첫 번째 프로젝트 맛집 블로그에 와주셔서 감사합니다.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section id="services">
  <div class="section-content">
    <div class="container services">
      <div class="services-header text-center mb-5">
        <h1 class="display-5">올해의 맛집</h1>
        <div class="divider"></div>
      </div>
      <div id="slick-slide" class="sercives-body">

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              <h3>글의 제목</h3>
              <p>조회수</p>
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

        <div class="services-col mx-2 my-3">
          <div class="card">
            <div class="overlay d-flex flex-column justify-content-center align-items-center">
              안녕하세요
            </div>
            <a href="#">
              <img src="img/food/ch/KakaoTalk_20221103_061416584.jpg" alt="" width="50rem" height="300rem" class="card-img-top">
            </a>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>

<section id="gallery">
  <div class="section-content">
    <div class="container gallery">
      <div class="gallery-header text-center mb-5">
        <h1 class="display-4">지역별 맛집</h1>
        <div class="divider"></div>
        <p class="lead text-secondary">지역 별 맛집을 소개 합니다</p>
      </div>
      <div class="row gallery-body">

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">서울</h2>
              <a class="link-warning text-decoration-none" href="#">서울 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">경기</h2>
              <a class="link-warning text-decoration-none" href="#">경기 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">제주</h2>
              <a class="link-warning text-decoration-none" href="#">제주 맛집 리스트</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>



<footer id="footer">
  <div class="section-content">
    <div class="container">
      <div class="row">
        <div class="col-md-3 mb-4 footer-2">
          <h4 class="mb-4">문의 전화</h4>
          <ul>
            <li> <i class="fas fa-phone-square-alt"></i> 대표 전화:  010-8246-0887</li>
            <li> <i class="fas fa-phone-square-alt"></i> 고객 센터:  02-1234-5678</li>
            <li> <i class="fas fa-phone-square-alt"></i> 이메일:  kms1997@naver.com</li>
          </ul>
        </div>
        <div class="col-md-3 mb-4 footer-3">
          <h4 class="mb-4">홍보 문의</h4>
          <ul>
            <li><i class="fas fa-user"></i> 홍보팀 담당자: 김민성</li>
            <li><i class="fas fa-phone-square-alt"></i> 홍보팀 전화: 02-1234-5678</li>
          </ul>
        </div>
        <div class="col-md-3 mb-4 footer-4">
          <h4 class="mb-4">Our Infos</h4>
          <div class="info-body">
            <p class="mb-2">
              <i class="fas fa-user"></i> CEO: KIM MIN SUNG
            </p>
            <p class="mb-2">
              <i class="fas fa-map-marked-alt"></i> Address: 서울시 마포대로 111
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js" integrity="sha512-6ORWJX/LrnSjBzwefdNUyLCMTIsGoNP6NftMy2UAm1JBm6PRZCO1d7OHBStWpVFZLO+RerTvqX/Z9mBFfCJZ4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
        integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="js/app.js"></script>
</body>

</html>