<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
 
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath() + "/index.jsp");
%>