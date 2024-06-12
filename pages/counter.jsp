<%@ page contentType="text/html" %>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>訪客計數器init</title>
</head>
<body>

<%
  int counter;
  String strNo = (String)application.getAttribute("counter");//讀application變數
  counter = Integer.parseInt(strNo); //轉成整數
  counter++;                                        //計數器加1
  strNo = String.valueOf(counter);    //轉成字串
  application.setAttribute("counter", strNo);//寫application變數
%>
您是第<%= counter %>位貴客！</h3>

</body>
</html>