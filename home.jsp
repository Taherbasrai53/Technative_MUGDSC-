<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="login_assets/css/home1.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>

    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">Garbage Wala</h2>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="About.jsp">ABOUT</a></li>
                    <li><a href="#">PAYMENTS</a></li>
                    <li><a href="#">CONTACT</a></li>
                    <li>
                     <div class="dropdown">
                     <button class="dropbtn"><i class='fas fa-user-alt'></i>
                     
                     </button>
                        <div class="dropdown-content">
                        <a href="Profile.jsp">Profile</a>
                        <a href="#">History</a>
                        <a href="JSP/logout.jsp">Logout</a>
                        </div>
                    </div>
                    </li>
                </ul>
            </div>

            <div class="search">
                <input class="srch" type="search" name="" placeholder="Search your requirements">
                <a href="#"> <button class="btn">Search</button></a>
            </div>

        </div>
        <div class="content">


            <h1>Garbage Collection<br><span>Disposal</span> <br>and Development .</h1>
            <br><br><br>

                <div class="intro">
                    <h3>Timely garbage collection is also important as much as merely collection.
                        <br>GARBAGE WALA   integrates  garbage  transportation  for  needy  onto   a 
                    <br>mobile technology platform ensuring convenient, transparent, and quick
                    <br> 
                    service fulfillment.</h3> 
                </div>
            



                <div class="form">
                    <h2>Book a Garbage wala</h2>
                    <form action="JSP/Logical_Order.jsp" method="post">
                    <input type="text" name="weight" placeholder="Enter Weight of Garbage">
                    <input type="text" name="type" placeholder="Enter Type of Garbage">
                    <button class="btnn"><a type="submit">Confirm Disposal</a></button>
                    </form>


                </div>
                    </div>
                </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
