<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lky.jsp.pcManager.article.dto.ArticleDto" %>

<%
System.out.println("이 메시지는 JSP 파일이 올바르게 실행되고 있는지 확인하기 위한 메시지입니다.");
%>

<%
List<ArticleDto> articles = (List<ArticleDto>)request.getAttribute("articles");
%>

  <script src="https://cdn.tailwindcss.com"></script>

  <!-- 보통 구역은 섹션으로 나눈다.-->
  <section class="article-list-wrap"></section>
  <!--container(max-width) : 너비가 너무 넓게 퍼지는 것을 방지 + 반응형-->
    <div class="container mx-auto">
      <h1 class="font-bold text-lg">게시물 리스트</h1>

      <ul class="mt-5">
        <% for(ArticleDto article : articles) { %>
        <!-- li가 flex 컨테이너가 된다-->
        <!-- li 자식속성은 flex-item이 된다-->
        <li class="flex">
          <a class="w-[40px] text-center hover:underline hover:text-[red]" href="/usr/article/detail/<%=article.getId()%>">
            <%=article.getId()%>
          </a>
          <!--flex-row : 성장성, 1, 우측 끝으로-->
          <a class="flex-grow hover:underline hover:text-[red]" href="/usr/article/detail/<%=article.getId()%>">
            <%=article.getTitle()%>
          </a>
          <a class="w-[100px] text-center hover:underline hover:text-[red]" href="/usr/article/delete/<%=article.getId()%>">
            삭제
          </a>
        </li>
        <% } %>
      </ul>
    </div>