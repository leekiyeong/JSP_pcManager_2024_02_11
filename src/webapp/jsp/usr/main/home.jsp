<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/css/main.css" rel="stylesheet">
  <title>pc관리 프로그램</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="/resources/js/main.js"></script>
</head>
<body>
<div id="header">
  <span style="font-size: 30px;">★</span> 오른쪽 메뉴에서 구매품목을 선택해주세요. <span
    style="font-size: 30px;">★</span>
</div>
<div class="container">
  <div class="grid-leftcontainer">
    <!-- 좌측1열 위치할 5개의 사각형 -->
    <div class="grid-item left-Firstrow">1</div>
    <div class="grid-item left-Firstrow">2</div>
    <div class="grid-item left-Firstrow">3</div>
    <div class="grid-item left-Firstrow">4</div>
    <div class="grid-item left-Firstrow">5</div>

    <!-- 좌측2열 위치할 5개의 사각형 -->
    <div class="grid-item left-Secondrow">6</div>
    <div class="grid-item left-Secondrow">7</div>
    <div class="grid-item left-Secondrow">8</div>
    <div class="grid-item left-Secondrow">9</div>
    <div class="grid-item left-Secondrow">10</div>

    <!-- 좌측3열 위치할 5개의 사각형 -->
    <div class="grid-item left-Thirdrow">11</div>
    <div class="grid-item left-Thirdrow">12</div>
    <div class="grid-item left-Thirdrow">13</div>
    <div class="grid-item left-Thirdrow">14</div>
    <div class="grid-item left-Thirdrow">15</div>

    <!-- 좌측4열 위치할 5개의 사각형 -->
    <div class="grid-item left-Fourthrow">16</div>
    <div class="grid-item left-Fourthrow">17</div>
    <div class="grid-item left-Fourthrow">18</div>
    <div class="grid-item left-Fourthrow">19</div>
    <div class="grid-item left-Fourthrow">20</div>

    <!-- 좌측5열 위치할 5개의 사각형 -->
    <div class="grid-item left-Fifthrow">21</div>
    <div class="grid-item left-Fifthrow">22</div>
    <div class="grid-item left-Fifthrow">23</div>
    <div class="grid-item left-Fifthrow">24</div>
    <div class="grid-item left-Fifthrow">25</div>

    <!-- 좌측6열 위치할 5개의 사각형 -->
    <div class="grid-item left-Sixthrow">26</div>
    <div class="grid-item left-Sixthrow">27</div>
    <div class="grid-item left-Sixthrow">28</div>
    <div class="grid-item left-Sixthrow">29</div>
    <div class="grid-item left-Sixthrow">30</div>
  </div>

  <div class="grid-rightcontainer">
    <!-- 우측1열 위치할 5개의 사각형 -->
    <div class="grid-item right-Firstrow">31</div>
    <div class="grid-item right-Firstrow">32</div>
    <div class="grid-item right-Firstrow">33</div>
    <div class="grid-item right-Firstrow">34</div>
    <div class="grid-item right-Firstrow">35</div>

    <!-- 우측2열 위치할 5개의 사각형 -->
    <div class="grid-item right-Secondrow">36</div>
    <div class="grid-item right-Secondrow">37</div>
    <div class="grid-item right-Secondrow">38</div>
    <div class="grid-item right-Secondrow">39</div>
    <div class="grid-item right-Secondrow">40</div>

    <!-- 우측3열 위치할 5개의 사각형 -->
    <div class="grid-item right-Thirdrow">41</div>
    <div class="grid-item right-Thirdrow">42</div>
    <div class="grid-item right-Thirdrow">43</div>
    <div class="grid-item right-Thirdrow">44</div>
    <div class="grid-item right-Thirdrow">45</div>

    <!-- 우측4열 위치할 5개의 사각형 -->
    <div class="grid-item right-Fourthrow">46</div>
    <div class="grid-item right-Fourthrow">47</div>
    <div class="grid-item right-Fourthrow">48</div>
    <div class="grid-item right-Fourthrow">49</div>
    <div class="grid-item right-Fourthrow">50</div>

    <!-- 우측5열 위치할 5개의 사각형 -->
    <div class="grid-item right-Fifthrow">51</div>
    <div class="grid-item right-Fifthrow">52</div>
    <div class="grid-item right-Fifthrow">53</div>
    <div class="grid-item right-Fifthrow">54</div>
    <div class="grid-item right-Fifthrow">55</div>

    <!-- 우측6열 위치할 5개의 사각형 -->
    <div class="grid-item right-Sixthrow">56</div>
    <div class="grid-item right-Sixthrow">57</div>
    <div class="grid-item right-Sixthrow">58</div>
    <div class="grid-item right-Sixthrow">59</div>
    <div class="grid-item right-Sixthrow">60</div>
  </div>
  <!-- 우측 회원,비회원 로고,현위치 -->
  <div class="grid-bottomcontainer">
    <div class="member">
      <img src="/images/member-icon.jpg">회원
    </div>
    <div class="nonMembers">
      <img src="/images/nonMember-icon.jpg">비회원
    </div>
    <div class="myLocation">
      <img src="/images/myLocation.jpg">현위치
    </div>
  </div>

  <!-- 로그인 모달 -->
  <div id="loginModal" class="modal">
    <div class="modal-LoginContent">
      <span class="close">&times;</span>
      <!-- 로그인 모달 내용을 추가하세요 -->
      <h2>로그인</h2>
      <form id="loginForm" action="/userLogin" method="post">
        <label for="username">사용자 아이디</label> <input type="text"
                                                     id="username" name="username" required><br> <label
          for="password">비밀번호</label> <input type="password" id="password"
                                             name="password" required><br> <input type="submit"
                                                                                  value="로그인">
      </form>
    </div>
  </div>

  <!-- 회원가입 모달 -->
  <div id="signupModal" class="modal">
    <div class="modal-SignUpContent">
      <span class="close">&times;</span>
      <h2>회원가입</h2>
      <form name="frm" id="signupForm">
        <label for="signupName">이름:</label> <input type="text"
                                                   id="signupName" name="signupName" placeholder="이름을 입력하세요" required><br>

        <label for="signupUsername">아이디:</label> <input type="text"
                                                        id="signupUsername" name="signupUsername"
                                                        placeholder="6~12글자의 알파벳과 숫자로 이루어진 아이디" required><br>

        <label for="signupPassword">비밀번호:</label> <input type="password"
                                                         id="signupPassword" name="signupPassword"
                                                         placeholder="8~20글자의 숫자와 알파벳 조합" required><br> <label
          for="signupPhone">전화번호:</label> <input type="text"
                                                 id="signupPhone" name="signupPhone"
                                                 placeholder="전화번호를 입력하세요 (예: 010-1234-5678)" required><br>

        <button type="submit" id="signUpButton" onclick="return false;">회원가입</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>
