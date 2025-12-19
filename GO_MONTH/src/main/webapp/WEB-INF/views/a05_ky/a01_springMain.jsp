<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
  	<title>봄 여행지 | GO-MONTH</title>
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- 공통 CSS -->
	<link href="${path}/css/styles.css" rel="stylesheet">
</head>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark position-relative">
  <div class="container">
    <a class="navbar-brand fw-bold" href="index.html">GO-MONTH</a>

    <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-center"
         id="navbarSupportedContent">
      <ul class="navbar-nav position-lg-absolute start-50 translate-middle-x">
        <li class="nav-item"><a class="nav-link active" href="/spring">봄</a></li>
        <li class="nav-item"><a class="nav-link" href="/summer">여름</a></li>
        <li class="nav-item"><a class="nav-link" href="/fall">가을</a></li>
        <li class="nav-item"><a class="nav-link" href="/winter">겨울</a></li>
      </ul>
    </div>

   <div class="d-none d-lg-block" id="authArea">
     <a class="btn btn-outline-light btn-login" href="login.html">로그인</a>
</div>

    </div>
  </div>
</nav>

<header class="py-5 bg-light border-bottom mb-4">
  <div class="container text-center my-5">
    <h1 class="fw-bolder">봄에 떠나기 좋은 여행지</h1>
    <p class="lead mb-0">
      꽃과 산책, 설렘 가득한 봄 여행 (3~5월)
    </p>
  </div>
</header>

<!-- =======================
 ① 월별 필터 버튼
======================= -->
<section class="py-4">
  <div class="container d-flex gap-2">
    <button class="btn btn-dark btn-month active" data-month="3">3월</button>
    <button class="btn btn-outline-dark btn-month" data-month="4">4월</button>
    <button class="btn btn-outline-dark btn-month" data-month="5">5월</button>
  </div>
</section>

<div class="container"> 
  <div class="row">
    <div class="col-lg-8">

      <div class="card mb-4">
        <img class="card-img-top featured-img"
             src="${path}/imgs/spring1.png" alt="봄 대표 여행지">
        <div class="card-body">
          <div class="small text-muted">SPRING PICK</div>
          <h2 class="card-title">봄 대표 여행지</h2>
          <p class="card-text">
            봄 시즌 추천 여행지를 준비 중입니다.
          </p>
          <a class="btn btn-primary" href="detail.html">자세히 보기 →</a>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-6">
          <div class="card mb-4">
            <img class="card-img-top" src="${path}/imgs/spring2.jpg" alt="">
            <div class="card-body">
              <div class="small text-muted">봄 테마</div>
              <h2 class="card-title h4">여행지 준비 중</h2>
              <p class="card-text">곧 업데이트될 예정입니다.</p>
              <a class="btn btn-primary" href="detail.html">자세히 보기 →</a>
            </div>
          </div>
        </div>

        <div class="col-lg-6">
          <div class="card mb-4">
            <img class="card-img-top" src="${path}/imgs/spring3.jpg" alt="">
            <div class="card-body">
              <div class="small text-muted">봄 테마</div>
              <h2 class="card-title h4">여행지 준비 중</h2>
              <p class="card-text">곧 업데이트될 예정입니다.</p>
              <a class="btn btn-primary" href="detail.html">자세히 보기 →</a>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="col-lg-4">
      <div class="card mb-4">
        <div class="card-header">여행지 검색</div>
        <div class="card-body">
          <div class="input-group">
            <input class="form-control" type="text" placeholder="여행지 검색">
            <button class="btn btn-primary">검색</button>
          </div>
        </div>
      </div>

      <div class="card mb-4">
        <div class="card-header">봄 여행 테마</div>
        <div class="card-body">
          <ul class="list-unstyled mb-0">
            <li>🌸 벚꽃</li>
            <li>🚶 산책</li>
            <li>🌿 자연</li>
            <li>📸 봄 사진</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">
      Copyright © GO-MONTH 2025
    </p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/scripts.js"></script>


</body>
</html>
