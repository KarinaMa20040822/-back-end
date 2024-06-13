<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" %>
	<%@ include file="config.jsp" %>

		<% if (session.getAttribute("id") !=null) { String userId=(String) session.getAttribute("id"); String
			sql="SELECT * FROM `members` WHERE `id` = ?" ; PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userId); ResultSet rs=pstmt.executeQuery(); String id="" , pwd="" , role="" ; if
			(rs.next()) { id=rs.getString("id"); pwd=rs.getString("pwd"); role=rs.getString("role"); // 假设有 'role' 字段
			session.setAttribute("id", id); if ("admin".equals(role)) { session.setAttribute("isAdmin", true);
			response.sendRedirect("backstage.jsp"); } else { session.setAttribute("isAdmin", false);
			response.sendRedirect("index.jsp"); } } else { out.println("密碼帳號不符 !! <a href='../html/login.html'>
			按此</a>重新登入");
			}
			con.close();
			%>
			哈囉，<%= id %>，<a href='logout.jsp'>登出</a><br />
				請修改會員資料：<br />
				<form action="update.jsp" method="POST">
					您的姓名：<input type="text" name="id" value="<%= id %>" /><br />
					您的密碼：<input type="password" name="pwd" value="<%= pwd %>" /><br />
					<input type="submit" name="b1" value="更新資料" />
				</form>
				<% } else { con.close(); %>
					<h1>
						<font color="red">您尚未登入，請登入！</font>
					</h1>
					<form action="check.jsp" method="POST">
						帳號：<input type="text" name="id" /><br />
						密碼：<input type="password" name="pwd" /><br />
						<input type="submit" name="b1" value="登入" />
					</form>
					<% } %>