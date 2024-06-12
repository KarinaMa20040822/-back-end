<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%> 
<%@include file="db_con.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="backstage.css">
  <script language=javascript>
  function a(){
	  document.form1.action="backstageuppdate.jsp";
	  document.form1.submit();
  }
  function a2(){
	  document.form1.action="backstagedelete.jsp";
	  document.form1.submit();
  }
  function b(){
	  document.form2.action="backstageuppdate.jsp";
	  document.form2.submit();
  }
  function b2(){
	  document.form2.action="backstagedelete.jsp";
	  document.form2.submit();
  }
  function c(){
	  document.form3.action="backstageuppdate.jsp";
	  document.form3.submit();
  }
  function c2(){
	  document.form3.action="backstagedelete.jsp";
	  document.form3.submit();
  }
  function d(){
	  document.form4.action="backstageuppdate.jsp";
	  document.form4.submit();
  }
  function d2(){
	  document.form4.action="backstagedelete.jsp";
	  document.form4.submit();
  }
  function e(){
	  document.form5.action="backstageuppdate.jsp";
	  document.form5.submit();
  }
  function e2(){
	  document.form5.action="backstagedelete.jsp";
	  document.form5.submit();
  }
  function f(){
	  document.form6.action="backstageuppdate.jsp";
	  document.form6.submit();
  }
  function f2(){
	  document.form6.action="backstagedelete.jsp";
	  document.form6.submit();
  }
  function g(){
	  document.form7.action="backstageuppdate.jsp";
	  document.form7.submit();
  }
  function g2(){
	  document.form7.action="backstagedelete.jsp";
	  document.form7.submit();
  }
  function h(){
	  document.form8.action="backstageuppdate.jsp";
	  document.form8.submit();
  }
  function h2(){
	  document.form8.action="backstagedelete.jsp";
	  document.form8.submit();
  }
  function i(){
	  document.form9.action="backstageuppdate.jsp";
	  document.form9.submit();
  }
  function i2(){
	  document.form9.action="backstagedelete.jsp";
	  document.form9.submit();
  }
  function j(){
	  document.form10.action="backstageuppdate.jsp";
	  document.form10.submit();
  }
  function j2(){
	  document.form10.action="backstagedelete.jsp";
      document.form10.submit();
  }
  function k(){
	  document.form11.action="backstageuppdate.jsp";
	  document.form11.submit();
  }
  function k2(){
	  document.form11.action="backstagedelete.jsp";
	  document.form11.submit();
  } 
  function l(){
	  document.form12.action="backstageuppdate.jsp";
	  document.form12.submit();
  }
  function l2(){
	  document.form12.action="backstagedelete.jsp";
	  document.form12.submit();
  }
  function m(){
	  document.form13.action="backstageuppdate.jsp";
	  document.form13.submit();
  }
  function m2(){
	  document.form13.action="backstagedelete.jsp";
	  document.form13.submit();
  }
  </script>
</head>

<body>
  <div class="title">後台管理系統</div>
<% 
sql = "SELECT * FROM `product`"; 
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
//先移到檔尾, getRow()後, 就可知道共有幾筆記錄
rs.last();
int totalNo=rs.getRow();


String[] src = new String[totalNo+1];
String[] id = new String[totalNo+1];
String[] price = new String[totalNo+1];
String[] reserve = new String[totalNo+1];
String[] desc = new String[totalNo+1];
for(int i=1;i<=totalNo;i++){
		sql = "SELECT * FROM `product` WHERE `id` LIKE '" +i+"'"; 
		rs =con.createStatement().executeQuery(sql);
		rs.next();
		id[i]=rs.getString(1);
		desc[i]=rs.getString(11);
		price[i]=rs.getString(5);
		src[i]=rs.getString(10);
		reserve[i]=rs.getString(6);

	
}
							%>	


  <table border="1">
    　<tr>
      　<td>id</td>
      　<td>商品名稱</td>
      <td>價格</td>
      　<td>庫存</td>
      <td>修改</td>
    </tr>   
	　
    <tr>
		<form name="form1" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[1]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[1]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[1]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[1]%>"></td>
      <td>
        <input type="button" onclick="a()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="a2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	
  <tr>
		<form name="form2" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[2]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[2]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[2]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[2]%>"></td>

      <td>
        <input type="button" onclick="b()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="b2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	
    <tr>
		<form name="form3" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[3]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[3]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[3]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[3]%>"></td>

      <td>
        <input type="button" onclick="c()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="c2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	
    <tr>
		<form name="form4" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[4]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[4]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[4]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[4]%>"></td>

      <td>
        <input type="button" onclick="d()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="d2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	
    <tr>
		<form name="form5" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[5]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[5]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[5]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[5]%>"></td>

      <td>
        <input type="button" onclick="e()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="e2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form6" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[6]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[6]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[6]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[6]%>"></td>

      <td>
        <input type="button" onclick="f()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="f2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	
    <tr>
		<form name="form7" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[7]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[7]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[7]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[7]%>"></td>

      <td>
        <input type="button" onclick="g()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="g2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form8" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[8]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[8]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[8]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[8]%>"></td>

      <td>
        <input type="button" onclick="h()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="h2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form9" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[9]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[9]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[9]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[9]%>"></td>

      <td>
        <input type="button" onclick="i()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="i2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form10" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[10]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[10]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[10]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[10]%>"></td>

      <td>
        <input type="button" onclick="j()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="j2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form11" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[11]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[11]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[11]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[11]%>"></td>

      <td>
        <input type="button" onclick="k()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="k2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>

    <tr>
		<form name="form12" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[12]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[12]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[12]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[12]%>"></td>

      <td>
        <input type="button" onclick="l()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="l2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
      　</form>
    </tr>
	<%if(totalNo==13)
	{%>
    <tr>
		<form name="form13" action="" method="POST">
      　<td><input type="text" name="name4" style="font-size: 25px; text-align:center;" value="<%=id[13]%>" onfocus=this.blur()></td>
		　<td><input type="text" name="name1" style="font-size: 25px;" value="<%=desc[13]%>"></td>	
      　<td><input type="text" name="name2" style="font-size: 25px;" value="<%=price[13]%>"></td>
      <td><input type="text" name="name3" style="font-size: 25px;" value="<%=reserve[13]%>"></td>

      <td>
        <input type="button" onclick="m()" class="addbutton1" style="font-size: 25px;" value="修改資料">
        <input type="button" onclick="m2()" class="addbutton1" style="font-size: 25px;" value="刪除資料">
      </td>
	      　</form>
    </tr>
	<%
	}%>


  </table>


  <div class="space">
  <a href="backstageinsert.jsp"><button class="addbutton2" style="font-size: 25px;">新增資料 </button></a>
  </div>
  <div class="space2">
  <a href="index.jsp"><button class="addbutton3" style="font-size: 25px;">回首頁 </button></a>
  <a href="logout.jsp"><button class="addbutton3" style="font-size: 25px;">登出 </button></a>
  </div>
  
  
  
  
</body>

</html>