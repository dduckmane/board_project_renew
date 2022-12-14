<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--  bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <%--  fontawesom--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%--  slick--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%--  slick--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"
          integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>🍴Matjip</title>

  <link rel="stylesheet" href="/css/boardWrite.css">

</head>

<style>
    .section-content .containerCustom {
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }
    @media (min-width: 768px) {
        .containerCustom {
            width: 750px;
        }
    }

    @media (min-width: 992px) {
        .containerCustom {
            width: 900px;
        }
    }

    @media (min-width: 1200px) {
        .containerCustom {
            width: 1000px;
        }
    }
</style>

<body>

<%@ include file="/WEB-INF/views/include/nav.jsp" %>

<section id="top">
    <div class="section-content overlay d-flex justify-content-center align-items-center">
        <div class="container-xxl">
            <div class="row align-items-center">
                <div class="col-md-9 welcome main-title">
                    <h1 class="welcome-title fw-light">&nbsp 마음 껏 리뷰를 남겨 주세요</h1>
                </div>
            </div>
        </div>
    </div>
</section>


<div style = "padding: 3rem 3rem;"></div>

<form action="/user/board/save/${groupId}" method="post" enctype="multipart/form-data">

    <div class="section-content d-flex justify-content-center align-items-center">
        <div class="containerCustom">
            <div class="mb-3">
                <input class="form-control" type="file" id="formFile"  name="thumbNail">
                <label for="formFile" class="form-label"> &nbsp 썸네일 사진을 골라주세요</label>
            </div>

            <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
                <input type="text" name="title" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
            </div>

            <textarea id="content" name="content"></textarea>

            <div class="mb-3">
                <input class="form-control" type="file" multiple="multiple" id="formFileMultiple" name="attachFiles">
                <label for="formFileMultiple" class="form-label"> &nbsp 첨부파일은 다중으로 선택 하실 수 있습니다.(단 한번에 올려야 합니다.) </label>
            </div>

            <button type="submit" class="btn btn-primary">글등록</button>
        </div>
    </div>
    <input type="hidden" name="groupId" value="${groupId}">
</form>

<!-- footer 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- footer 종료 -->

<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<script type="text/javascript">	// 글쓰기 editor 및 사진 업로드 기능
    CKEDITOR.replace('content',
            {
              filebrowserUploadUrl:'/food/imageUpload.do'
            });
</script>

</body>

</html>