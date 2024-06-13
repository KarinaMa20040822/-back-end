<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" %>
    <%@include file="config.jsp" %>
        <% // 从请求中获取参数 String username=request.getParameter("username"); String
            userPwd=request.getParameter("password"); // 修改变量名避免重复 String
            confirmPwd=request.getParameter("confirm-password"); // 修改变量名避免重复 String
            email=request.getParameter("email"); String address=request.getParameter("address"); if (username !=null &&
            !username.isEmpty() && userPwd !=null && !userPwd.isEmpty() && confirmPwd !=null && !confirmPwd.isEmpty() &&
            email !=null && !email.isEmpty() && address !=null && !address.isEmpty()) { if (!userPwd.equals(confirmPwd))
            { out.println("<h1>Passwords do not match. Please try again.</h1>");
            } else {
            try {
            // 检查用户名是否已存在
            String checkQuery = "SELECT * FROM members WHERE id=?";
            PreparedStatement psCheck = con.prepareStatement(checkQuery);
            psCheck.setString(1, username);
            ResultSet rs = psCheck.executeQuery();

            if (rs.next()) {
            out.println("<h1>Username already exists. Please choose another.</h1>");
            } else {
            // 插入用户数据到 register 表
            String insertRegisterQuery = "INSERT INTO register (id, pwd, email, address) VALUES (?, ?, ?, ?)";
            PreparedStatement psInsertRegister = con.prepareStatement(insertRegisterQuery);
            psInsertRegister.setString(1, username);
            psInsertRegister.setString(2, userPwd);
            psInsertRegister.setString(3, email);
            psInsertRegister.setString(4, address);
            int resultRegister = psInsertRegister.executeUpdate();

            if (resultRegister > 0) {
            // 插入用户数据到 members 表
            String insertMembersQuery = "INSERT INTO members (id, pwd) VALUES (?, ?)";
            PreparedStatement psInsertMembers = con.prepareStatement(insertMembersQuery);
            psInsertMembers.setString(1, username);
            psInsertMembers.setString(2, userPwd);
            int resultMembers = psInsertMembers.executeUpdate();

            if (resultMembers > 0) {
            out.println("<h1>Registration successful! <a href='login.html'>Login here</a></h1>");
            } else {
            out.println("<h1>Registration failed in members table. Please try again.</h1>");
            }
            } else {
            out.println("<h1>Registration failed in register table. Please try again.</h1>");
            }
            }
            } catch (Exception e) {
            e.printStackTrace();
            out.println("<h1>There was an error processing your request. Please try again later.</h1>");
            } finally {
            try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            }
            } else {
            out.println("<h1>All fields are required. Please fill out the form completely.</h1>");
            }
            %>