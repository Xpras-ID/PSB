<%@ include file="otentikasi.jsp" %>

<%
   String sesi_user = gantiKosong(
                         request.getParameter("pemakai"));
   String sesi_pass = gantiKosong(
                         request.getParameter("sandi"));

   if (! otentikasi(sesi_user, sesi_pass))
   {
      String msg = "Harap diisi dengan benar";
      response.sendRedirect("index.jsp?msg=" + msg +
                            "&pemakai=" + sesi_user);
   }
   else {
      // --- Hapus sesi sekarang
      session.invalidate();

      // --- Bentuk sesi baru
      session = request.getSession(true);

      // --- Bentuk dua buah atribut
      session.setAttribute("sesi_user", 
                           sesi_user);
      session.setAttribute("sesi_pass", 
                           sesi_pass);
   }
%>

<HTML>
<HEAD>
<TITLE>home</TITLE>
<style type="text/css">
<!--
.style26 {font-family: Broadway; font-size: 16px; }
.style28 {font-size: 16}
.style29 {
	font-family: "Times New Roman";
	font-weight: bold;
}
-->
</style>
</HEAD>

<BODY background="../images/back2.png">
<CENTER>
  <table width="357" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td><div align="center">
      <p class="style29"> Anda Login Sebagai: 
        <%out.print(sesi_user);%>
      </p>
      </div>
        <p align="center" class="style26">SELAMAT DATANG</p></td>
  </tr>
  <tr>
    <td height="52"><div align="center"></div>
      <div align="center"><img src="../images/imagesss.jpg" width="188" height="184"></div></td>
  </tr>
  <tr>
    <td height="52"><div align="center" class="style26 style29">
      <p>DI</p>
      <p>SISTEM INFORMASI PENERIMAAN SISWA BARU</p>
      <p>SMP N 1 PULOSARI</p>
    </div></td>
  </tr>
</table>
<p>&nbsp;</p>
</CENTER>
</BODY>
</HTML>
