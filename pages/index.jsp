<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/CSS/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <title>main page</title>
</head>

<body>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!--Navigation bar-->
    <div id="nav-placeholder">

    </div>

    <script>
        $(document).ready(function () {
            $("#nav-placeholder").load("nav.html");
        });
    </script>
    <!--end of Navigation bar-->

    <div class="content">
        <div class="slider">
            <div class="list">
                <div class="item">
                    <img src="../assets/img/cpu.jpg" />
                </div>
                <div class="item">
                    <img src="../assets/img/ram.jpg" />
                </div>
                <div class="item">
                    <img src="../assets/img/network.jpg" />
                </div>
            </div>

            <!-- button prev and next -->
            <div class="ad-button">
                <button id="prev">❮</button>
                <button id="next">❯</button>
            </div>
            <!-- dots(if 5 items => 5 dots) -->
            <ul class="dots">
                <li class="active"></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <div class="scroller">
            <div class="product-list">
                <div class="product-container">
                    <div class="product-title">
                        Item 1
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>

                <div class="product-container">
                    <div class="product-title">
                        Item 2
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>

                <div class="product-container">
                    <div class="product-title">
                        Item 3
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>

                <div class="product-container">
                    <div class="product-title">
                        Item 4
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>

                <div class="product-container">
                    <div class="product-title">
                        Item 5
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>

                <div class="product-container">
                    <div class="product-title">
                        Item 6
                    </div>
                    <div class="product-desc">

                    </div>
                    <div class="product-button">
                        <button>
                            Buy
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-container">
            <div class="card1">
                <div class="card-title">
                    <h1>What is VPS?</h1>
                </div>
                <div class="card-content">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laudantium, commodi!</p>
                </div>
                <div class="card-button">
                    <button>
                        Learn More
                    </button>
                </div>
            </div>
            <div class="card2">
                <div class="card-title">
                    <p>Meet the</p>
                    <h1>Developer team</h1>
                </div>
                <div class="card-content">
                    <!-- <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laudantium, commodi!</p> -->
                </div>
                <div class="card-button">
                    <button>
                        Learn More
                    </button>
                </div>
            </div>
        </div>

        <div class="form-container">
            <div class="form">
                <div class="form-title1">
                    Contact Us
                </div>
                <div class="form-title2">
                    Leave your message here
                </div>
                <form action="comment.jsp" method="POST" id="userform">
                    <div class="form-title"></div>
                    <div class="form-email">
                        <div class="form-desc">Your E-mail</div>
                        <input rows="4" type="text" name="email" required>
                    </div>
                    <div class="form-message">
                        <div class="form-desc">Message</div>
                        <textarea rows="4" name="content" required></textarea>
                    </div>
                    <div class="form-button">
                        <input type="submit" value="Send">
                    </div>
                </form>
            </div>
        </div>

        <footer>
            <div class="copyright">
                copyright...
            </div>
            <div class="counter">

                <% int counter; String strNo=(String)application.getAttribute("counter");//讀application變數
                    counter=Integer.parseInt(strNo); //轉成整數 counter++; //計數器加1 strNo=String.valueOf(counter); //轉成字串
                    application.setAttribute("counter", strNo);//寫application變數 %>
                    <div>Vistor count:<%= counter %>
                    </div>


            </div>
        </footer>
    </div>
    <script src="../assets/JS/index.js" defer></script>
</body>

</html>