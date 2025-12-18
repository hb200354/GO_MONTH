<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2열 이미지 갤러리</title>
	<link rel="stylesheet" href="${path}/com/tourWinter.css" >
</head>
<body>
   <h1>월 선택하기</h1>
    <p>원하는 월 버튼을 클릭하여 선택하세요:</p>

    <!-- 12월 버튼 -->
    <button class="month-button" onclick="selectMonth(12)">12월</button>
    
    <!-- 1월 버튼 -->
    <button class="month-button" onclick="selectMonth(1)">1월</button>

    <!-- 2월 버튼 -->
    <button class="month-button" onclick="selectMonth(2)">2월</button>

    <!-- 결과를 표시할 영역 -->
    <p id="result">아직 선택된 월이 없습니다.</p>

    <!-- JavaScript 코드를 포함하는 스크립트 태그 -->
    <script src="${path}/com/tourWinter.js"></script>

    <h1>아름다운 풍경 갤러리 (2열)</h1>

    <!-- 이미지를 담는 컨테이너 -->
    <div class="gallery-container">
        <!-- 각 이미지를 위한 아이템 -->
        <div class="gallery-item">
            <img src="${path}/img/2_1_홍성서산.jpg" alt="아름다운 풍경 1">
        </div>
        <div class="gallery-item">
            <img src="${path}/img/2_2_담양.jpg" alt="아름다운 풍경 2">
        </div>
        <div class="gallery-item">
            <img src="${path}/img/2_3_청도.jpg" alt="아름다운 풍경 3">
        </div>
        <div class="gallery-item">
            <img src="${path}/img/2_4_제주.jpg" alt="아름다운 풍경 4">
        </div>
        <div class="gallery-item">
            <img src="${path}/img/2_5_양주.jpg" alt="아름다운 풍경 5">
        </div>
        <div class="gallery-item">
            <img src="${path}/img/2_6_속초.jpg" alt="아름다운 풍경 6">
        </div>
    </div>

</body>
</html>