<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ include file="config.jsp" %>
<%
    String email = request.getParameter("email");
    String content = request.getParameter("content");

    out.println("Email: " + email + "<br>\n");

    out.println("留言內容: " + content + "<br>\n");

    if (email != null && !email.isEmpty() && content != null && !content.isEmpty()) {
        try {
            String sql = "INSERT INTO messages (email, content) VALUES (?, ?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, content);
            pstmt.executeUpdate();
            out.println("留言成功!");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    } else {
        out.println("All fields are required!");
    }
%>
