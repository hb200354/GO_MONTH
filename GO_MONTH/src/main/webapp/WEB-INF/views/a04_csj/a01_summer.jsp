<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>여름 여행지 | GO-MONTH</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/css/styles.css" rel="stylesheet">
</head>

<body>

<!-- 네비게이션 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand fw-bold" href="${path}/">GO-MONTH</a>
    <ul class="navbar-nav mx-auto">
      <li class="nav-item"><a class="nav-link" href="${path}/spring">봄</a></li>
      <li class="nav-item"><a class="nav-link active" href="${path}/summer">여름</a></li>
      <li class="nav-item"><a class="nav-link" href="${path}/fall">가을</a></li>
      <li class="nav-item"><a class="nav-link" href="${path}/winter">겨울</a></li>
    </ul>
    <a class="btn btn-outline-light" href="${path}/login">로그인</a>
  </div>
</nav>

<!-- 헤더 -->
<header class="py-5 bg-light border-bottom text-center">
  <h1>여름에 떠나기 좋은 여행지</h1>
  <p>6월 · 7월 · 8월 여름 여행 추천</p>
</header>

<!-- 월 버튼 -->
<section class="py-4">
  <div class="container d-flex gap-2">
    <button class="btn btn-dark btn-month" data-month="6">6월</button>
    <button class="btn btn-outline-dark btn-month" data-month="7">7월</button>
    <button class="btn btn-outline-dark btn-month" data-month="8">8월</button>
  </div>
</section>

<div class="container">
  <div class="row">

    <!-- 메인 -->
    <div class="col-lg-8">

      <!-- 월별 대표 배너 -->
      <div class="card mb-4">
        <img id="featuredImg" class="card-img-top">
        <div class="card-body">
          <div class="small text-muted">SUMMER PICK</div>
          <h2 id="featuredTitle"></h2>
          <p id="featuredDesc"></p>
        </div>
      </div>

      <!-- 카드 목록 -->
      <div class="row" id="placeList"></div>
    </div>

    <!-- 사이드바 -->
    <div class="col-lg-4">
      <div class="card mb-4">
        <div class="card-header">여행지 검색</div>
        <div class="card-body">
          <input id="searchInput" class="form-control mb-2" placeholder="여행지 검색">
          <button id="searchBtn" class="btn btn-primary w-100">검색</button>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
/* ======================
   월별 데이터
====================== */
const summerData = {
  6: {
    featured: {
      img: "${path}/imgs/summer-main.jpg",
      title: "강릉 경포대",
      desc: "초여름에 가장 잘 어울리는 바다 여행지"
    },
    list: [
      { title: "강릉 경포대", img: "${path}/imgs/summer-main.jpg", desc: "탁 트인 동해 바다" },
      { title: "부산 해운대", img: "${path}/imgs/summer1.jpg", desc: "여름 대표 해변" },
      { title: "제주 협재해변", img: "${path}/imgs/summer3.jpg", desc: "에메랄드빛 바다" },
      { title: "평창 흥정계곡", img: "${path}/imgs/summer2.jpg", desc: "시원한 계곡 여행" }
    ]
  },
  7: {
    featured: {
      img: "${path}/imgs/20191229160530047_oen.jpg",
      title: "부산 광안리",
      desc: "한여름 밤, 가장 빛나는 바다"
    },
    list: [
      { title: "부산 광안리", img: "${path}/imgs/20191229160530047_oen.jpg", desc: "야경 명소" },
      { title: "부산 해운대", img: "${path}/imgs/summer1.jpg", desc: "낮과 밤이 모두 아름다운 해변" },
      { title: "계곡 여행", img: "${path}/imgs/00310070100054.jpg", desc: "한여름에도 시원한 자연" },
      { title: "제주 협재해변", img: "${path}/imgs/summer3.jpg", desc: "푸른 바다 힐링" }
    ]
  },
  8: {
    featured: {
      img: "${path}/imgs/summer4.jpg",
      title: "한강 야경",
      desc: "늦여름 밤, 도심 속 산책"
    },
    list: [
      { title: "한강 야경", img: "${path}/imgs/summer4.jpg", desc: "여름 밤 산책 코스" },
      { title: "부산 광안리", img: "${path}/imgs/20191229160530047_oen.jpg", desc: "밤바다 명소" },
      { title: "제주 협재해변", img: "${path}/imgs/summer3.jpg", desc: "늦여름 바다" },
      { title: "평창 흥정계곡", img: "${path}/imgs/summer2.jpg", desc: "마무리 계곡 여행" }
    ]
  }
};

let currentMonth = 6;

/* ===== DOM ===== */
const featuredImg   = document.getElementById("featuredImg");
const featuredTitle = document.getElementById("featuredTitle");
const featuredDesc  = document.getElementById("featuredDesc");
const placeList     = document.getElementById("placeList");
const searchBtn     = document.getElementById("searchBtn");
const searchInput   = document.getElementById("searchInput");

/* ===== 렌더 ===== */
function renderMonth(month) {
  currentMonth = month;
  const data = summerData[month];

  featuredImg.src = data.featured.img;
  featuredTitle.innerText = data.featured.title;
  featuredDesc.innerText = data.featured.desc;

  renderList(data.list);
}

function renderList(list) {
  placeList.innerHTML = "";
  list.forEach(p => {
    placeList.innerHTML += `
      <div class="col-lg-6 mb-4">
        <div class="card h-100">
          <img src="${p.img}" class="card-img-top">
          <div class="card-body">
            <h5>${p.title}</h5>
            <p>${p.desc}</p>
          </div>
        </div>
      </div>
    `;
  });
}

/* ===== 월 버튼 ===== */
document.querySelectorAll(".btn-month").forEach(btn => {
  btn.onclick = () => {
    document.querySelectorAll(".btn-month").forEach(b =>
      b.classList.replace("btn-dark", "btn-outline-dark")
    );
    btn.classList.replace("btn-outline-dark", "btn-dark");
    renderMonth(btn.dataset.month);
  };
});

/* ===== 검색 ===== */
searchBtn.onclick = () => {
  const keyword = searchInput.value.trim();
  const filtered = summerData[currentMonth].list.filter(p =>
    p.title.includes(keyword)
  );
  renderList(filtered);
};

/* ===== 초기 ===== */
renderMonth(6);
</script>

</body>
</html>