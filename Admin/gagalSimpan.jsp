<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body background="../images/back2.png">
<table width="633" border="0">
  <tr>
    <td width="89" height="55"><div align="center"><img src="../images/home.png" width="56" height="53"></div></td>
    <td width="701"><h3 class="style1">Gagal mengupdate data..!!</h3></td>
  </tr>
</table>
<br>
  Pesan kesalahan :<em> <%= request.getParameter("pesannya") %></em>
<p align="center"><input type="button" class="tombol" onClick="window.history.back()" value="Klik disini untuk kembali">
</p>
</body>
</html>