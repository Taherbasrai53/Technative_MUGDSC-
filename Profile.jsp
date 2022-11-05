<%@page import="User_DAO.uDAO"%>
<%@page import="User_DTO.uDTO"%>
<%
    HttpSession ses = request.getSession();
    uDTO ud = (uDTO)ses.getAttribute("user");
    uDAO udao = new uDAO();
    uDTO u = udao.Data(ud.getUphone());
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="login_assets/css/profile.css">
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


            <h1></h1>
            <br><br><br>

                <div class="intro">
                    <h3>
                </div>
            



                <div class="form">
                    <h2>Profile Setting</h2>
                    <form action="JSP/Update.jsp" method="post">
                        <input type="text" name="uname" placeholder="Enter Name" value="<%out.print(u.getUname());%>">
                        <input type="text" name="uphone" readonly value="<%out.print(ud.getUphone());%>">
                        <input type="text" name="uaddress" placeholder="Enter Address" value="<%out.print(u.getUaddress());%>">
                        <input type="text" name="upincode" placeholder="Enter Pincode" value="<%out.print(u.getUpincode());%>">
                    <button class="btnn"><a type="submit">Update</a></button>
                    </form>


                </div>
                    </div>
                </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>