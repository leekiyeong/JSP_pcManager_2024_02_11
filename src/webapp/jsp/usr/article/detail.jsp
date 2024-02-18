<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.lky.jsp.pcManager.article.dto.ArticleDto" %>

<%
ArticleDto article = (ArticleDto)request.getAttribute("article");
%>

  <h1>게시물 상세보기</h1>

  <div>
    <% if(article != null) { %>
      <div>
        ID : <%= article.getId()%>
      </div>
      <div>
        title : <%= article.getTitle()%>
      </div>
      <div>
        body : <%= article.getBody()%>
      </div>
    <% }%>
  </div>
