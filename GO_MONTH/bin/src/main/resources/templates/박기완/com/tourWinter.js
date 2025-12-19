// script.js 파일 내용

/**
 * 월 선택 버튼 클릭 시 호출되는 함수
 * @param {number} month - 선택된 월 (1부터 12까지)
 */
function selectMonth(month) {
    // 결과를 표시할 HTML 요소를 ID로 가져옵니다.
    const resultElement = document.getElementById('result');

    // switch 문을 사용하여 선택된 월에 따라 다른 메시지를 설정합니다.
    let message = "";
    switch (month) {
        case 12:
            message = "12월(겨울)이 선택되었습니다. 연말 계획을 세워보세요!";
            break;
        case 1:
            message = "1월(겨울)이 선택되었습니다. 새해를 시작해봅시다!";
            break;
        case 2:
            message = "2월(겨울)이 선택되었습니다. 겨울의 끝자락을 즐겨보세요.";
            break;
        default:
            message = "잘못된 월이 선택되었습니다.";
    }

    // 결과 영역에 메시지를 표시합니다.
    if (resultElement) {
        resultElement.textContent = message;
    }
    
    // 실제 웹 애플리케이션에서는 이 부분에서 서버로 데이터를 전송하거나,
    // 다른 JavaScript 함수를 호출하여 달력을 이동시키는 등의 복잡한 로직을 수행할 수 있습니다.
    console.log(`선택된 월: ${month}`);
}

// 참고: HTML의 onclick 속성 대신 JavaScript에서 addEventListener를 사용할 수도 있습니다.
// 예시:
// document.querySelector('button:nth-of-type(1)').addEventListener('click', () => selectMonth(12));
// document.querySelector('button:nth-of-type(2)').addEventListener('click', () => selectMonth(1));
// document.querySelector('button:nth-of-type(3)').addEventListener('click', () => selectMonth(2));