<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행지 상세 정보 | GO-MONTH</title>

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
      </ul>
    </div>

    <a class="btn btn-outline-light btn-login" href="${path}/login">로그인</a>
  </div>
</nav>

<!-- =======================
 ① 대표 이미지
======================= -->
<section class="py-5">
  <div class="container">
    <div class="card">
      <img id="detailImage"
           src="${path}/imgs/summer-main.jpg"
           class="card-img-top featured-img"
           alt="대표 이미지">
    </div>
  </div>
</section>

<!-- =======================
 ② 기본 정보
======================= -->
<section class="pb-4">
  <div class="container">
    <h2 class="fw-bold mb-3" id="detailTitle">여행지명</h2>
    <ul class="list-unstyled">
      <li id="detailLocation">📍 위치</li>
      <li id="detailSeason">🗓 방문 가능 시기</li>
    </ul>
  </div>
</section>

<hr>

<!-- =======================
 ③ 상세 설명
======================= -->
<section class="py-4">
  <div class="container">
    <h4 class="fw-bold mb-3">상세 설명</h4>
    <ul id="detailDesc"></ul>
  </div>
</section>

<hr>

<!-- =======================
 ④ 추가 이미지
======================= -->
<section class="py-5 bg-light">
  <div class="container">
    <h4 class="fw-bold mb-4">추가 이미지</h4>

    <div class="card">
      <img id="detailSubImage"
           src="${path}/imgs/summer1.jpg"
           class="card-img-top"
           alt="추가 이미지">
    </div>
  </div>
</section>

<!-- =======================
 ⑤ 버튼
======================= -->
<section class="py-5">
  <div class="container text-center">
    <div class="d-flex justify-content-center gap-3">
      <button class="btn btn-outline-primary">찜하기 ♡</button>
      <a href="javascript:history.back()" class="btn btn-dark">뒤로가기</a>
    </div>
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

<!-- =======================
 JS (더미 상세 데이터)
======================= -->
<script>
const params = new URLSearchParams(location.search);
const id = params.get("id");

const detailData = {
  gangneung: {
    title: "강릉 경포대",
    img: "${path}/imgs/summer-main.jpg",
    subImg: "${path}/imgs/summer1.jpg",
    location: "강원도 강릉시",
    season: "여름 (6~8월)",
    desc: [
      "강릉을 대표하는 여름 바다 여행지입니다.",
      "해변과 산책로가 잘 조성되어 있습니다.",
      "도심과 가까워 접근성이 좋습니다.",
      "주변에 카페와 관광지가 많습니다."
    ]
  },
  haeundae: {
    title: "부산 해운대",
    img: "${path}/imgs/summer1.jpg",
    subImg: "${path}/imgs/summer4.jpg",
    location: "부산광역시 해운대구",
    season: "여름 (6~8월)",
    desc: [
      "국내에서 가장 유명한 해변 중 하나입니다.",
      "여름철 다양한 축제가 열립니다.",
      "야경과 먹거리가 풍부합니다.",
      "대중교통 접근성이 뛰어납니다."
    ]
  },
  hyupjae: {
    title: "제주 협재해변",
    img: "${path}/imgs/summer3.jpg",
    subImg: "${path}/imgs/summer3.jpg",
    location: "제주특별자치도 제주시",
    season: "여름",
    desc: [
      "에메랄드빛 바다가 인상적인 제주 해변입니다.",
      "수심이 얕아 가족 여행에 적합합니다.",
      "한적한 분위기로 힐링이 가능합니다.",
      "인근 관광지와 연계 여행이 좋습니다."
    ]
  }
};

const data = detailData[id];

if (data) {
  document.getElementById("detailTitle").textContent = data.title;
  document.getElementById("detailImage").src = data.img;
  document.getElementById("detailSubImage").src = data.subImg;
  document.getElementById("detailLocation").textContent = "📍 위치: " + data.location;
  document.getElementById("detailSeason").textContent = "🗓 방문 가능 시기: " + data.season;

  const ul = document.getElementById("detailDesc");
  ul.innerHTML = "";
  data.desc.forEach(text => {
    const li = document.createElement("li");
    li.textContent = text;
    ul.appendChild(li);
  });
}
</script>

</body>
</html>