<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@include file="config.jsp"%>
<%
sql = "SELECT * FROM `products`"; 
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
//先移到檔尾, getRow()後, 就可知道共有幾筆記錄
rs.last();
int totalNo=rs.getRow();
sql="INSERT `products`(`id`) VALUES ('"+(totalNo+1)+"')";;
con.createStatement().execute(sql);
con.close();//結束資料庫連結
out.print("新增成功!! 請<a href='backstage.jsp'>按此</a>回系統!!");
%>
