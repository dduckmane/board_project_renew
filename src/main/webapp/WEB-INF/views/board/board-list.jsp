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
    #sortBox, #searchBox, #money, #regions{
        width: 10rem;
    }
    #content {
        width: 20rem;
      }
    #image {
        width: 25vw;
        height: 20vw;
        object-fit: fill;
    }
    .card {
        border: 0px;
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

<div class="d-flex container-fluid mt-2">
    <div class="dropdown">
        <button class="btn btn-outline-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            필터 적용
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li class="dropdown-item">
                <form class="d-flex" action="/user/board/list/${groupId}">

                    <div id="regions">
                        <select class="form-select" id="inputGroupSelect4"
                                aria-label="Example select with button addon"
                                name="price">

                            <option value="">가격 대</option>
                            <option value="10000">~10000</option>
                            <option value="20000">10000 ~ 20000</option>
                            <option value="30000">20000 ~ 30000</option>
                            <option value="excess">30000 ~</option>

                        </select>
                    </div>

                    <div id="money">
                        <select class="form-select" id="inputGroupSelect3"
                                aria-label="Example select with button addon"
                                name="tag">

                            <option value="">태그로 검색</option>
                            <option value="atmosphere">분위기 좋은</option>
                            <option value="money">가성비</option>
                            <option value="reservation">예약 가능</option>
                            <option value="play">놀기 좋은</option>

                        </select>
                    </div>

                    <div id="sortBox">
                        <select class="form-select" id="inputGroupSelect2"
                                aria-label="Example select with button addon"
                                name="sort">

                            <option value="">정렬</option>
                            <option value="createdDateDESC">최근 순</option>
                            <option value="createdDateASC">오래된 순</option>
                            <option value="viewCnt">조회수 순</option>

                        </select>
                    </div>

                    <div id="searchBox">
                        <select class="form-select" id="inputGroupSelect"
                                aria-label="Example select with button addon"
                                onchange="searchCondition()" onclick="selected()">

                            <option class="opt" value="">검색 필터</option>
                            <option class="opt" value="title">제목</option>
                            <option class="opt" value="name">작성자</option>
                            <option class="opt" value="all">작성자+제목</option>

                        </select>
                    </div>

                    <input id="content" name="name" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>

            </li>
        </ul>
    </div>

    <div class="ms-auto">
        <a class="btn btn-outline-success navbar-brand me-0" href="/user/board/save/${groupId}">글쓰기</a>
        <a class="btn btn-outline-success navbar-brand" href="/user/board/list/${groupId}">필터 초기화</a>
    </div>

</div>

<div style = "padding: 3rem 3rem;"></div>

<!-- 리스트 시작 -->
<div class="row">
  <c:forEach var="item" varStatus="status" items="${BoardDtoList}">
      <div class="col-md-3 col-sm-6 p-0">
          <div class="col-md">
              <div class="card mb-3 p-0">
                  <a href="/user/board/${item.id}">
                      <img id="image" data-item-id="${item.id}" class="card-img card-img-left img-fluid" src="" alt="Card image" >
                  </a>
                  <div class="card-body p-1 m-0 d-flex flex-column justify-content-center align-items-center">
                      <h5 class="card-title">${item.subTitle} <c:if test="${item.newArticle}"><img src="https://img.icons8.com/office/16/null/new.png"/></c:if></h5>
                      <p class="card-text p-0 m-0 text-align">
                          조회수: ${item.viewCnt}
                      </p>
                      <input type="checkbox" class="btn-check" name="options" id="option+${item.id}">
                      <label class="btn btn-outline-danger p-0" for="option+${item.id}">😍</label>
                  </div>
              </div>
          </div>

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

<script>
  let condition1=null;

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

  function searchCondition(){
      let select = document.getElementById('inputGroupSelect');
      condition1 = select.options[select.selectedIndex].value;

      let content = document.getElementById('content');
      content.name=condition1;
  }


  (function (){
    showImage();
    searchCondition();

  })();
</script>
</body>
</html>