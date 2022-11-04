<%@page import="User_DAO.uDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
    {
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String pass = request.getParameter("pass");
        String address = request.getParameter("address");
        String pincode = request.getParameter("pincode");
        
        uDAO u = new uDAO();
        int res = u.SignUp(name, mobile, pass, address, pincode);
        out.print(res);
        if(res>0)
        {
            response.sendRedirect("../index.jsp");
        }
        else
        {
            out.print("Sign Up failed");
        }
        
    }
    catch(Exception e)
    {
        out.print("SignUp Exception : "+e.toString());
    }
%>
