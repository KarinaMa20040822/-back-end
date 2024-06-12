<%@page contentType="text/html" %>
<%@page pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
Cookie deleteCookie = new Cookie("demo"+id, "");
deleteCookie.setMaxAge(0);

response.addCookie(deleteCookie);

%>

<script>
    alert("刪除成功!")
    window.location.href = "cart.jsp"
</script>