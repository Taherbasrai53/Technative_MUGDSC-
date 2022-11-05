<%@page import="User_DTO.uDTO"%>
<%@page import="User_DAO.uDAO"%>
<%
    try
    {
        String name = request.getParameter("uname");
        String address = request.getParameter("uaddress");
        String pincode = request.getParameter("upincode");
        String phone = request.getParameter("uphone");
        if(name != null)
        {
            uDTO user = new uDTO(name, address, pincode,phone);
            uDAO u = new uDAO();
            boolean result = u.updateUser(user);
            if(result)
            {
                response.sendRedirect("../Profile.jsp");
            }
            else
            {
                out.print("<h1>Rec0ord Not Update...</h1>");
            }
        }
    }
    catch(Exception e)
    {
        out.print("Update Exception "+e.toString());
    }
%>