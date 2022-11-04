
<%@page import="User_DAO.Order_DAO"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="User_DTO.uDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
    {
        HttpSession sess = request.getSession();
        uDTO ud = (uDTO)sess.getAttribute("user");
        
        String weight = request.getParameter("weight");
        String type = request.getParameter("type");
        LocalDateTime myObj = LocalDateTime.now();
	DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        String time = myObj.format(dateTimeFormatter);
        
        Order_DAO o = new Order_DAO();
        int res = o.insert_order(type, ud.getUid(), time, weight);
        
        if(res>0)
        {
                response.sendRedirect("../sucess_page.jsp");
        }
        else
        {
            out.print("Order Insertion Failed...");
        }
        
    }
    catch(Exception e)
    {
        out.print("Order Exception "+e.toString());
    }
%>
