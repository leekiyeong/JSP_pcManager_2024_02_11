<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int dan = Integer.parseInt(request.getParameter("dan"));
int limit = Integer.parseInt(request.getParameter("limit"));
%>

<h1><%=dan%>단</h1>

<% for(int i = 1; i <= limit; i++) { %>
  <div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>

<%
int a = 10;
out.println(a);
%>

<!--1번방식-->
<h1>
  <%
  out.println(a);
  %>
</h1>

<!--2번방식-->
<h1>
  <%=a%>
</h1>