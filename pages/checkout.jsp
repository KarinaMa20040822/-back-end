<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" %>
<%@include file="config.jsp" %>
<%
String email=session.getAttribute("email").toString();
sql = "SELECT * FROM `cart` WHERE `email` LIKE '" +email+"'"; 
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
//先移到檔尾, getRow()後, 就可知道共有幾筆記錄
rs.last();
int totalNo=rs.getRow();

rs =con.createStatement().executeQuery(sql);
int[] id1 = new int[totalNo+1];
String[] email1 = new String[totalNo+1];
String[] product1 = new String[totalNo+1];
String[] price1 = new String[totalNo+1];
String[] quantity1 = new String[totalNo+1];
for(int i=1;i<=totalNo;i++){
		rs.next();
		id1[i]=Integer.parseInt(rs.getString(1));
		email1[i]=rs.getString(2);
		price1[i]=rs.getString(4);
		product1[i]=rs.getString(3);
		quantity1[i]=rs.getString(5);
}

String reserve[]=new String[totalNo+1];
for(int i=1;i<=totalNo;i++){
sql = "SELECT * FROM `product` WHERE `Name` LIKE '"+product1[i]+"'"; 
rs =con.createStatement().executeQuery(sql);
rs.next();
reserve[i]=rs.getString(6);
}

for(int i=1;i<=totalNo;i++){
	reserve[i]=Integer.toString(Integer.parseInt(reserve[i])-Integer.parseInt(quantity1[i]));
sql="UPDATE `product` SET `reserve`='"+reserve[i]+"' where `Name` LIKE '"+product1[i]+"'";
con.createStatement().execute(sql);
}
sql="DELETE FROM `cart` WHERE `email` = '"+email+"'";
con.createStatement().execute(sql);
con.close();//結束資料庫連結
out.print("下單成功!! 請<a href='allproduct.jsp'>按此</a>回首頁!!");
%>