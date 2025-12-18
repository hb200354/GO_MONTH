<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>여름 여행지 | GO-MONTH</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 공통 CSS -->
<link href="${path}/css/styles.css" rel="stylesheet">
</head>

<body>

<!-- =======================
 Navbar
======================= -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand fw-bold" href="${path}/">GO-MONTH</a>

    <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-center"
         id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="${path}/spring">봄</a></li>
        <li class="nav-item"><a class="nav-link active" href="${path}/summer">여름</a></li>
        <li class="nav-item"><a class="nav-link" href="${path}/fall">가을</a></li>
        <li class="nav-item"><a class="nav-link" href="${path}/winter">겨울</a></li>
      </ul>
    </div>

    <a class="btn btn-outline-light" href="${path}/login">로그인</a>
  </div>
</nav>

<!-- =======================
 Header
======================= -->
<header class="py-5 bg-light border-bottom mb-4">
  <div class="container text-center my-5">
    <h1 class="fw-bolder">여름에 떠나기 좋은 여행지</h1>
    <p class="lead mb-0">6월 · 7월 · 8월 월별 여름 여행 추천</p>
  </div>
</header>

<!-- =======================
 월별 버튼
======================= -->
<section class="py-4">
  <div class="container d-flex gap-2">
    <button class="btn btn-dark btn-month" data-month="6">6월</button>
    <button class="btn btn-outline-dark btn-month" data-month="7">7월</button>
    <button class="btn btn-outline-dark btn-month" data-month="8">8월</button>
  </div>
</section>

<!-- =======================
 Content
======================= -->
<div class="container">
  <div class="row">

    <!-- Main -->
    <div class="col-lg-8">
      <div class="row" id="placeList"></div>
    </div>

    <!-- Sidebar -->
    <div class="col-lg-4">

      <!-- Search -->
      <div class="card mb-4">
        <div class="card-header">여행지 검색</div>
        <div class="card-body">
          <div class="input-group">
            <input id="searchInput" class="form-control" type="text" placeholder="여행지 검색">
            <button class="btn btn-primary" id="searchBtn">검색</button>
          </div>
        </div>
      </div>

      <div class="card mb-4">
        <div class="card-header">여름 여행 테마</div>
        <div class="card-body">
          <ul class="list-unstyled mb-0">
            <li>🏖 바다 여행</li>
            <li>🌊 계곡 · 폭포</li>
            <li>🌙 여름 밤 여행</li>
            <li>🌿 힐링 · 휴양</li>
          </ul>
        </div>
      </div>

    </div>
  </div>
</div>

<!-- =======================
 Footer
======================= -->
<footer class="py-5 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">
      Copyright © GO-MONTH 2025
    </p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- =======================
 JS (더미 데이터)
======================= -->
<script>
const monthData = {
  6: [
    { id: "gangneung", title: "강릉 경포대", img: "${path}/imgs/summer-main.jpg", desc: "6월 대표 바다 여행지" }
  ],
  7: [
    { id: "hyupjae", title: "제주 협재해변", img: "${path}/imgs/summer3.jpg", desc: "7월 제주 바다" }
  ],
  8: [
    { id: "hangang", title: "한강 야경", img: "${path}/imgs/summer4.jpg", desc: "8월 여름밤 산책" }
  ]
};

const placeList = document.getElementById("placeList");
const buttons = document.querySelectorAll(".btn-month");

function renderList(list) {
  placeList.innerHTML = "";
  list.forEach(place => {
    placeList.innerHTML += `
      <div class="col-lg-6 mb-4">
        <div class="card h-100">
          <img src="\${place.img}" class="card-img-top">
          <div class="card-body">
            <h5 class="card-title">\${place.title}</h5>
            <p class="card-text">\${place.desc}</p>
            <a href="${path}/detail?id=\${place.id}" class="btn btn-primary">
              자세히 보기 →
            </a>
          </div>
        </div>
      </div>
    `;
  });
}

buttons.forEach(btn => {
  btn.addEventListener("click", () => {
    buttons.forEach(b => b.classList.replace("btn-dark","btn-outline-dark"));
    btn.classList.replace("btn-outline-dark","btn-dark");
    renderList(monthData[btn.dataset.month]);
  });
});

renderList(monthData[6]);
</script>

</body>
</html>
