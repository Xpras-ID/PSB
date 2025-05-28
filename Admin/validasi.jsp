<%@ include file="otentikasi.jsp" %>

<%
   String pemakai  = 
      (String) session.getAttribute("sesi_user"); 
   String password = 
      (String) session.getAttribute("sesi_pass"); 

   if (! otentikasi(pemakai, password))
   {
      String msg = "Silakan login dulu";
      response.sendRedirect("login.jsp?msg=" + msg);
   }
%>
