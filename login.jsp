<%@page import="User_DAO.uDAO"%>
<%@page import="User_DTO.uDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    PrintWriter pw = response.getWriter();
    try
    {
        String mobile = request.getParameter("mobile");
        String pass = request.getParameter("password");
        out.print(mobile);
        out.print(pass);
        if(mobile!=null)
        {
            uDAO user = new uDAO();
            uDTO u = user.Login(mobile, pass);
            if(u != null)
            {
                HttpSession ses = request.getSession();
                ses.setAttribute("user", u);
                response.sendRedirect("../Home.jsp");
           }
           else
           {
               pw.print("Login Failed....");
           }
        }
    }
    catch(Exception e)
    {
        pw.print("Login Exception"+e.toString());
    }
%>
