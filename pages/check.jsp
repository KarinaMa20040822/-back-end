<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" %>
<%@include file="config.jsp" %>
<%
    String username = request.getParameter("username");
    String userPassword = request.getParameter("password"); // 使用不同的变量名

    if(username != null && !username.equals("") && userPassword != null && !userPassword.equals("")){
        String query = "SELECT * FROM members WHERE `id`=? AND `pwd`=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, username);
        pstmt.setString(2, userPassword);
        ResultSet rs = pstmt.executeQuery();

        if(rs.next()){
            out.println("<h1>登入成功! 歡迎, " + username + ".</h1>");
        } else {
            out.println("<h1>Login failed. Invalid username or password.</h1>");
        }
    } else {
        out.println("<h1>請輸入帳號和密碼</h1>");
    }
%>