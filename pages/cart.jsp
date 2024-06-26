<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="../assets//CSS/cart.css">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/9b3624985e.js" crossorigin="anonymous"></script>
</head>

<body>
    <div id="nav-placeholder">

    </div>

    <script>
        $(document).ready(function () {
            $("#nav-placeholder").load("nav.html");
        });
    </script>

    <main>
        <div class="cart-container">
            <div class="cart-header">
                <div class="product">Product</div>
                <div>Price</div>
                <div>Amount</div>
                <div>Subtotal</div>
                <div></div>
            </div>
            <div class="cart-item">
                <div class="product">
                    <img src="../assets/img/cpu.jpg" alt="Product Image" />
                    <div class="detail">
                        <span>AI Based</span>
                        <span class="spec">vCPU: 6c<br>vGPU: 3G<br>RAM: 64G<br>Mem. 128G<br>Bandwidth 1G</span>
                    </div>
                </div>
                <div>NT$ 250</div>
                <div class="quantity-control">
                    <form method="post" action="minus.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <input type="submit" value="-">
                    </form>
                    <span>4</span>
                    <form method="post" action="add.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <input type="submit" value="+">
                    </form>
                </div>
                <div>NT$ 1000</div>
                <div>
                    <form id="delete1" method="post" action="delete.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <i class="fa-solid fa-trash delete" onclick="$('#delete1').submit();"></i>
                    </form>
                </div>
            </div>
            <div class="cart-item">
                <div class="product">
                    <img src="../assets/img/cpu.jpg" alt="Product Image" />
                    <div class="detail">
                        <span>AI Based</span>
                        <span class="spec">vCPU: 6c<br>vGPU: 3G<br>RAM: 64G<br>Mem. 128G<br>Bandwidth 1G</span>
                    </div>
                </div>
                <div>NT$ 250</div>
                <div class="quantity-control">
                    <form method="post" action="minus.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <input type="submit" value="-">
                    </form>
                    <span>2</span>
                    <form method="post" action="add.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <input type="submit" value="+">
                    </form>
                </div>
                <div>NT$ 500</div>
                <div>
                    <form id="delete2" method="post" action="delete.jsp">
                        <input type="hidden" name="product" value="product_id">
                        <i class="fa-solid fa-trash delete" onclick="$('#delete2').submit();"></i>
                    </form>
                </div>
            </div>
        </div>
        <div class="hrcontainer">
            <span class="line">
        </div>
        <br>
        <div class="total">
            <div class="total-item">
                <p>Total: </p>
                <p>NT$ 1500</p>
            </div>
        </div>
        <br>
        <form class="checkout" method="post" action="checkout.jsp">
            <input type="submit" class="btn" value="Checkout">
        </form>
    </main>
</body>

</html>