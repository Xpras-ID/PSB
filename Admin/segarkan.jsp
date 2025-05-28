<%
   long waktuSekarang = System.currentTimeMillis();
   response.setDateHeader("Expires", waktuSekarang);
   response.setDateHeader("Last-Modified", waktuSekarang);

   if (request.getProtocol().equals("HTTP/1.0")) 
      response.setHeader("Pragma:",  "no-cache"); // HTTP/1.0
   else
      response.setHeader(
         "Cache-Control:", "no-cache, must-revalidate"); // HTTP/1
%>