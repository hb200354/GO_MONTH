<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사이트 소개 | GO-MONTH</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 공통 CSS -->
<link href="${path}/css/styles.css" rel="stylesheet">
</head>

<body>

<!-- =======================
 공통 네비게이션
======================= -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark position-relative">
  <div class="container">
    <a class="navbar-brand fw-bold" href="${path}/">GO-MONTH</a>

    <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-center"
         id="navbarSupportedContent">
      <ul class="navbar-nav position-lg-absolute start-50 translate-middle-x">
        <li class="nav-item"><a class="nav-link" href="${path}/spring">봄</a></li>
        <li class="nav-item"><a class="nav-link" href="${path}/summer">여름</a></li>
        <li class="nav-item"><a class="nav-link" href="${path}/fall">가을</a></li>
        <li class="nav-item"><a class="nav-link" href="${path}/winter">겨울</a></li>
        <li class="nav-item"><a class="nav-link active" href="${path}/about">사이트 소개</a></li>
      </ul>
    </div>

    <div class="d-none d-lg-block">
      <a class="btn btn-outline-light btn-login" href="${path}/login">로그인</a>
    </div>
  </div>
</nav>

<!-- =======================
 페이지 헤더
======================= -->
<header class="py-5 bg-light border-bottom mb-5">
  <div class="container text-center">
    <h1 class="fw-bolder">GO-MONTH 소개</h1>
    <p class="lead text-muted mb-0">
      월과 계절에 맞춰 여행지를 추천하는 큐레이션 서비스
    </p>
  </div>
</header>

<!-- =======================
 ① 서비스 소개
======================= -->
<section class="py-5">
  <div class="container">
    <h3 class="fw-bold mb-3">서비스 개요</h3>
    <p>
      <strong>GO-MONTH</strong>는 여행을 계획할 때
      “지금 이 시기에 어디를 가는 게 좋을까?”라는 고민에서 출발한
      <strong>월·계절 기반 여행지 큐레이션 웹 서비스</strong>입니다.
    </p>
    <p>
      여행지를 단순히 지역별로 나열하는 것이 아니라,
      <strong>월과 계절</strong>을 기준으로 정리하여
      사용자가 여행 시기에 맞는 장소를 직관적으로 선택할 수 있도록 돕습니다.
    </p>
  </div>
</section>

<hr>

<!-- =======================
 ② 기획 의도
======================= -->
<section class="py-5 bg-light">
  <div class="container">
    <h3 class="fw-bold mb-3">기획 의도</h3>
    <ul>
      <li>여행 시기별로 어울리는 여행지를 한눈에 제공</li>
      <li>검색 부담 없이 빠르게 여행지 탐색 가능</li>
      <li>계절별 특징이 잘 드러나는 여행 정보 제공</li>
    </ul>
    <p class="mt-3">
      GO-MONTH는 사용자가 복잡한 검색 과정 없이도
      <strong>지금 떠나기 좋은 여행지</strong>를 쉽게 찾을 수 있도록 기획되었습니다.
    </p>
  </div>
</section>

<hr>

<!-- =======================
 ③ 주요 기능
======================= -->
<section class="py-5">
  <div class="container">
    <h3 class="fw-bold mb-4">주요 기능</h3>

    <div class="row g-4">
      <div class="col-md-6">
        <div class="p-4 border rounded h-100">
          <h5 class="fw-bold">📅 월·계절별 여행지 추천</h5>
          <p class="mb-0">
            봄·여름·가을·겨울 및 월별 버튼을 통해
            시기에 맞는 여행지를 확인할 수 있습니다.
          </p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="p-4 border rounded h-100">
          <h5 class="fw-bold">🔍 여행지 검색</h5>
          <p class="mb-0">
            여행지 이름을 기준으로 검색하여
            원하는 장소를 빠르게 찾을 수 있습니다.
          </p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="p-4 border rounded h-100">
          <h5 class="fw-bold">📄 상세 페이지 제공</h5>
          <p class="mb-0">
            각 여행지마다 상세 설명과 이미지를 제공하여
            여행 정보를 한눈에 확인할 수 있습니다.
          </p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="p-4 border rounded h-100">
          <h5 class="fw-bold">❤️ 찜 기능 (확장 예정)</h5>
          <p class="mb-0">
            관심 있는 여행지를 저장하고
            개인 맞춤 여행 목록으로 관리할 수 있도록 확장할 예정입니다.
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<hr>

<!-- =======================
 ④ 사용 기술
======================= -->
<section class="py-5 bg-light">
  <div class="container">
    <h3 class="fw-bold mb-3">사용 기술</h3>
    <ul>
      <li>HTML / CSS</li>
      <li>Bootstrap 5</li>
      <li>JavaScript (DOM 조작, 이벤트 처리)</li>
      <li>LocalStorage (로그인 상태, 기능 확장 고려)</li>
    </ul>
  </div>
</section>

<!-- =======================
 푸터
======================= -->
<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">
      Copyright © GO-MONTH 2025
    </p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>