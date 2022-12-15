<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <title>🍴Matjip</title>
    <%--  custom css--%>
    <link rel="stylesheet" href="/css/boardList.css">
</head>
<style>
    a.btn {
        font-size: 1rem;
    }
</style>
<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>

<section id="top">
    <div class="section-content overlay d-flex justify-content-center align-items-center">
        <div class="container-xxl">
            <div class="row align-items-center">
                <div class="col-md-9 welcome main-title">
                    <h1 class="welcome-title fw-light">&nbsp 한식 페이지에 오신걸 환영합니다.</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="btn btn-outline-success navbar-brand" href="/user/board/save/${groupId}">글쓰기</a>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>
<div style = "padding: 3rem 3rem;"></div>

<!-- 리스트 시작 -->
<div class="row">
  <c:forEach var="item" varStatus="status" items="${BoardDtoList}">
      <div class="col-md-3 col-sm-6 p-0">
         <a href="/user/board/${item.id}">
          <div class="col-md">
            <div class="card mb-3 p-0">
               <img data-item-id="${item.id}" class="card-img card-img-left img-fluid" src="" alt="Card image">
               <div class="card-body m-0 d-flex flex-column justify-content-center align-items-center">
                  <h5 class="card-title">${item.subTitle} <c:if test="${item.newArticle}"><img src="https://img.icons8.com/office/16/null/new.png"/></c:if></h5>
                  <p class="card-text">
                      조회수: ${item.viewCnt}
                  </p>
               </div>
            </div>
          </div>
         </a>
      </div>
  </c:forEach>
</div>

<!-- pagination 시작 -->
<div class="container mt-3">
  <ul class="pagination justify-content-center">
    <c:if test="${not pageMaker.first}">
      <li class="page-item"><a class="page-link" href="">이전</a></li>
    </c:if>

    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
      <li class="page-item ${pageMaker.nowPage == num ? 'active' : ''}"><a class="page-link" href="/user/board/list/1?page=${num-1}">${num}</a></li>
    </c:forEach>

    <c:if test="${not pageMaker.last}">
      <li class="page-item"><a class="page-link" href="">다음</a></li>
    </c:if>
  </ul>
</div>
<!-- pagination 종료 -->

<!-- footer 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- footer 종료 -->

<script src="/js/app.js"></script>

<script>
  function showImage(){

    const $thumbList = document.querySelectorAll('img[data-item-id]');
    for (let $thumb of [...$thumbList]) {
      let itemId = $thumb.dataset.itemId;
        fetch('/images?itemId=' + itemId)
                .then(res => res.blob())
                .then(img => {
                  const url = URL.createObjectURL(img);
                  $thumb.src = url;
                });
    }
  }
  (function (){
    showImage();
  })();
</script>
</body>
</html>