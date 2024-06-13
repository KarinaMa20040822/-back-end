<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/members?serverTimezone=UTC";
    String user = "root";
    String password = “1234";
    Connection con = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, user, password);
    } catch (Exception e) {
        e.printStackTrace();
        throw new ServletException("Database connection error.");
    }
%>
