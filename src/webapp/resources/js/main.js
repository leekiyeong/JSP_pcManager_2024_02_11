    document.addEventListener('DOMContentLoaded', function() {
        // 클릭 이벤트 핸들러 등록
        const memberDiv = document.querySelector('.member');
        const nonMembersDiv = document.querySelector('.nonMembers');
        const loginModal = document.getElementById('loginModal');
        const signupModal = document.getElementById('signupModal');

        memberDiv.addEventListener('click', () => {
            loginModal.style.display = 'block'; // 로그인 모달 표시
            document.body.classList.add('modal-open'); // 스크롤 막기
        });

        nonMembersDiv.addEventListener('click', () => {
            signupModal.style.display = 'block'; // 회원가입 모달 표시
            document.body.classList.add('modal-open'); // 스크롤 막기
        });

        // 모달 창 닫기
        const closeModalButtons = document.querySelectorAll('.close');
        closeModalButtons.forEach((button) => {
            button.addEventListener('click', () => {
                loginModal.style.display = 'none'; // 로그인 모달 숨기기
                signupModal.style.display = 'none'; // 회원가입 모달 숨기기
                document.body.classList.remove('modal-open'); // 스크롤 허용
            });
        });

        // 모달 외부 클릭 시 모달 닫기
        window.addEventListener('click', (event) => {
            if (event.target === loginModal || event.target === signupModal) {
                loginModal.style.display = 'none'; // 로그인 모달 숨기기
                signupModal.style.display = 'none'; // 회원가입 모달 숨기기
                document.body.classList.remove('modal-open'); // 스크롤 허용
            }
        });

        // 로그인 양식 제출 시 처리
        const loginForm = document.getElementById('loginForm');
        loginForm.addEventListener('submit', (event) => {
            event.preventDefault(); // 기본 동작 방지 (페이지 새로고침 방지)

            // 로그인 폼 데이터 가져오기
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // AJAX 요청 보내기 (jQuery 사용)
            $.ajax({
                type: 'POST', // HTTP 요청 메서드 (POST로 변경할 수 있음)
                url: '/userLogin', // 컨트롤러 엔드포인트 URL
                data: { username: username, password: password }, // 전송할 데이터
                success: function(response) {
                    // 성공적으로 응답을 받았을 때 처리
                    alert('로그인 성공: ' + response);
                },
                error: function(error) {
                    // 오류 발생 시 처리
                    alert('로그인 실패: ' + error.responseText);
                }
            });
        });

        // 회원가입 양식 제출 시 처리
        const signupForm = document.getElementById('signupForm');
        signupForm.addEventListener('submit', (event) => {
            event.preventDefault(); // 기본 동작 방지 (페이지 새로고침 방지)

            // 회원가입 폼 데이터 가져오기
            const name = document.getElementById('signupName').value;
            const username = document.getElementById('signupUsername').value;
            const password = document.getElementById('signupPassword').value;
            const phone = document.getElementById('signupPhone').value;

            // 유효성 검사 및 처리
            // (이 부분에 유효성 검사 코드를 추가하세요)
            // AJAX 요청 보내기 (jQuery 사용)
            $.ajax({
                type: 'POST', // HTTP 요청 메서드 (POST로 변경할 수 있음)
                url: '/userSignup', // 컨트롤러 엔드포인트 URL
                data: { name: name, username: username, password: password, phone: phone }, // 전송할 데이터
                success: function(response) {
                    // 성공적으로 응답을 받았을 때 처리
                    alert('회원가입 성공: ' + response);
                },
                error: function(error) {
                    // 오류 발생 시 처리
                    alert('회원가입 실패: ' + error.responseText);
                }
            });
        });
   });