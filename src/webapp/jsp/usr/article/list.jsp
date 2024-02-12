<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lky.jsp.pcManager.article.dto.ArticleDto" %>

<%
System.out.println("이 메시지는 JSP 파일이 올바르게 실행되고 있는지 확인하기 위한 메시지입니다.");
%>

<%
List<ArticleDto> articles = (List<ArticleDto>)request.getAttribute("articles");
%>

  <h1>게시물 리스트</h1>
  <ul>
    <% for (ArticleDto article : articles) { %>
    <li><%=article.getId()%>. <%=article.getTitle()%></li>
    <% } %>
  </ul>
