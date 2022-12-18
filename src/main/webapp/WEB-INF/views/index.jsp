<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<%@ include file="./include/static-head.jsp" %>

<%--  slick--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
        integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<%--  slick--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"
        integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<%--  custom css--%>
  <link rel="stylesheet" href="css/app.css">

  <style>
    #image {
      width: 250px;
      height: 250px;
      object-fit: fill;
    }
  </style>

  <title>🍴Matjip</title>
</head>

<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>

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
        <h1 class="display-5">맛집 BEST</h1>
        <div class="divider"></div>
      </div>
      <div id="slick-slide" class="sercives-body">
        <c:forEach var="item" items="${items}">
          <div class="services-col mx-2 my-3">
            <div class="card">
              <div class="overlay d-flex flex-column justify-content-center align-items-center">
                <h3>${item.name}</h3>
                <p>조회수 ${item.viewCnt}</p>
              </div>
              <a href="#">
                <img id="image" src="/images?itemId=${item.itemId}" alt="" class="card-img-top" width="250px" height="250px">
              </a>
            </div>
          </div>
        </c:forEach>
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
              <a class="link-warning text-decoration-none" href="/user/board/list?param=Seoul">서울 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">경기</h2>
              <a class="link-warning text-decoration-none" href="/user/board/list?param=gyeonggiDo">경기 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">인천</h2>
              <a class="link-warning text-decoration-none" href="/user/board/list?param=incheon">인천 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">강원도</h2>
              <a class="link-warning text-decoration-none" href="#">강원도 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">경상북도</h2>
              <a class="link-warning text-decoration-none" href="#">경상북도 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">경상남도</h2>
              <a class="link-warning text-decoration-none" href="#">경상남도 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">전라북도</h2>
              <a class="link-warning text-decoration-none" href="#">전라북도 맛집 리스트</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-4 gallery-item">
          <div class="card card-body border-0 p-0">
            <div class="overlay d-flex flex-column justify-content-center align-items-center h-100 w-100 border-2">
              <h2 class="gallery-title">전라남도</h2>
              <a class="link-warning text-decoration-none" href="#">전라남도 맛집 리스트</a>
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

<%--footer--%>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<%--footer--%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js" integrity="sha512-6ORWJX/LrnSjBzwefdNUyLCMTIsGoNP6NftMy2UAm1JBm6PRZCO1d7OHBStWpVFZLO+RerTvqX/Z9mBFfCJZ4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
        integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="js/app.js"></script>
</body>

</html>