<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %> 
<%@include file="config.jsp"%>
<%
String name1=new String(request.getParameter("name1").getBytes("ISO-8859-1"),"UTF-8");;
String name2=request.getParameter("name2");
String name3=request.getParameter("name3");
String name4=request.getParameter("name4");
sql="UPDATE `products` SET `productsName`='',`price` = '' ,`instock` = ''  WHERE `id`='"+name4+"'";
con.createStatement().execute(sql);
con.close();//結束資料庫連結
out.print(name1+","+name2+","+name3+","+name4);
out.print("刪除成功!! 請<a href='backstage.jsp'>按此</a>回系統!!");
%>