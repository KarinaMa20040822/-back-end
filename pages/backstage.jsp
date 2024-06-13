<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.sql.*, java.util.*" %>

    <% String url="jdbc:mysql://localhost:3306/members" ; String username="root" ; String password="1234" ; Connection
      con=null; try { Class.forName("com.mysql.jdbc.Driver"); con=DriverManager.getConnection(url, username, password);
      } catch (Exception e) { e.printStackTrace(); } %>

      <!DOCTYPE html>
      <html lang="zh-Hant">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>商店後臺管理介面</title>
        <link rel="stylesheet" href="../css/admin.css">
      </head>

      <body>
        <div class="container">
          <header class="header">
            <h1>商店後臺管理介面</h1>
          </header>
          <nav class="sidebar">
            <ul>
              <li><a href="#orders">訂單管理</a></li>
              <li><a href="#products">商品管理</a></li>
              <li><a href="#users">用戶管理</a></li>
              <li><a href="#settings">設定</a></li>
              <li><a href="#logout">登出</a></li>
            </ul>
          </nav>
          <main class="main-content">
            <section id="orders">
              <h2>客戶訂單管理</h2>
              <table class="orders-table">
                <thead>
                  <tr>
                    <th>用戶名稱</th>
                    <th>商品名稱</th>
                    <th>數量</th>
                    <th>總金額</th>
                    <th>狀態</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>李嘉欣</td>
                    <td>卡比八啦後背包</td>
                    <td>1</td>
                    <td>$240</td>
                    <td>已完成</td>
                  </tr>
                  <tr>
                    <td>林沛潔</td>
                    <td>公雞側背包</td>
                    <td>1</td>
                    <td>$180</td>
                    <td>處理中</td>
                  </tr>
                  <!-- 更多訂單數據 -->
                </tbody>
              </table>
            </section>
            <section id="products">
              <% try { String querySql="SELECT * FROM products" ; Statement stmt=con.createStatement(); ResultSet
                rs=stmt.executeQuery(querySql); %>
                <h2>商品管理</h2>
                <button onclick="document.getElementById('addProductForm').style.display='block'">新增商品</button>

                <div id="addProductForm" style="display:none;">
                  <h3>新增商品</h3>
                  <form method="POST" action="" accept-charset="UTF-8">
                    <input type="hidden" name="formType" value="addProduct">
                    <label for="productName">商品名稱:</label><br>
                    <input type="text" id="productName" name="productName" required><br>
                    <label for="productId">商品id:</label><br>
                    <input type="text" id="productId" name="productId" required><br>
                    <label for="productPrice">價格:</label><br>
                    <input type="text" id="productPrice" name="productPrice" required><br>
                    <label for="productStock">庫存數量:</label><br>
                    <input type="text" id="productStock" name="productStock" required><br>
                    <label for="productCategory">規格:</label><br>
                    <input type="text" id="productCategory" name="productCategory" required><br>
                    <label for="productImage">圖片:</label><br>
                    <input type="text" id="productImage" name="productImage" required><br>
                    <label for="productDescription">產品介紹:</label><br>
                    <input type="text" id="productDescription" name="productDescription" required><br>
                    <input type="submit" value="提交">
                  </form>
                </div>
                <table class="products-table">
                  <thead>
                    <tr>
                      <th>商品id</th>
                      <th>商品名稱</th>
                      <th>價格</th>
                      <th>庫存數量</th>
                      <th>規格</th>
                      <th>商品</th>
                      <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                    <% while (rs.next()) { %>
                      <tr>
                        <td>
                          <%= rs.getString("id") %>
                        </td>
                        <td>
                          <%= rs.getString("productsName") %>
                        </td>
                        <td>
                          <%= rs.getInt("productsDescribe") %>
                        </td>
                        <td>
                          <%= rs.getInt("instock") %>
                        </td>
                        <td>NT$<%= rs.getString("defaultPrice") %>
                        </td>
                        <td>
                          <%= rs.getInt("defaultCPU") %>
                        </td>
                        <td>
                          <%= rs.getInt("defaultGPU") %>
                        </td>
                        <td>
                          <%= rs.getInt("defaultRAM") %>
                        </td>
                        <td>
                          <%= rs.getInt("defaultMEM") %>
                        </td>
                        <td>
                          <%= rs.getInt("defaultBW") %>
                        </td>
                        <td>
                          <button>編輯</button>
                          <button>刪除</button>
                        </td>
                      </tr>
                      <% } rs.close(); stmt.close(); } catch (Exception e) { e.printStackTrace(); } %>
                  </tbody>
                </table>
            </section>
            <section id="users">
              <h2>用戶管理</h2>
              <button onclick="document.getElementById('addUserForm').style.display='block'">新增用戶</button>
              <div id="addUserForm" style="display:none;">
                <h3>新增用戶</h3>
                <form>
                  <label for="userName">用戶名稱:</label><br>
                  <input type="text" id="userName" name="userName"><br>
                  <label for="userEmail">電子郵件:</label><br>
                  <input type="email" id="userEmail" name="userEmail"><br>
                  <label for="userPassword">密碼:</label><br>
                  <input type="password" id="userPassword" name="userPassword"><br>
                  <label for="userRole">角色:</label><br>
                  <select id="userRole" name="userRole">
                    <option value="admin">管理員</option>
                    <option value="user">普通用戶</option>
                  </select><br>
                  <input type="submit" value="提交">
                </form>
              </div>
              <table class="users-table">
                <thead>
                  <tr>
                    <th>用戶編號</th>
                    <th>用戶名稱</th>
                    <th>電子郵件</th>
                    <th>註冊日期</th>
                    <th>狀態</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>001</td>
                    <td>林沛潔</td>
                    <td>perry@gmail.com</td>
                    <td>2024-03-23</td>
                    <td>啟用</td>
                    <td>
                      <button>編輯</button>
                      <button>刪除</button>
                    </td>
                  </tr>
                  <tr>
                    <td>002</td>
                    <td>李加新</td>
                    <td>sin@gmail.com</td>
                    <td>2023-11-27</td>
                    <td>停用</td>
                    <td>
                      <button>編輯</button>
                      <button>刪除</button>
                    </td>
                  </tr>
                  <!-- 更多用戶數據 -->
                </tbody>
              </table>
            </section>
            <section id="settings">
              <h2>設定</h2>
              <p>設定內容</p>
            </section>
            <section id="logout">
              <h2>登出</h2>
              <div class="logout">
                <a href="#logout">登出</a>
              </div>
            </section>
          </main>
        </div>
      </body>

      </html>