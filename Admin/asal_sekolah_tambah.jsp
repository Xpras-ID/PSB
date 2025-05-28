<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="java.util.*" errorPage="" %>
 <%@ include file="conn.jsp" %> 
  <%@ include file="validasi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-family: "Times New Roman";
	font-weight: bold;
	font-size: 16px;
}
.style2 {	font-family: "Times New Roman";
	font-weight: bold;
}
.style8 {
	font-size: 9px;
	color: #FF0000;
}
.style9 {color: #0000FF}
.style10 {font-size: 10px}
.style13 {font-size: 12px}
-->
</style>

</head> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="asal_sekolah_simpan.jsp" method="post">
<p align="center" class="style1">ASAL SEKOLAH</p>
<table width="661" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">
          
<tr>
  <td colspan="3"><span class="style2 style8 style9 style10"><span class="style9"><blink></blink></span></span></td>
  </tr>
          <tr>
            <td width="229"><div align="left" class="style2">Asal Sekolah</div></td>
            <td width="5">:</td>
            <td width="397"><label>
              <input name="nama" type="text" id="nama" size="50"/>
            </label></td>
    </tr>
          <tr>
            <td>Alamat</td>
            <td>:</td>
            <td><input name="alamat" type="text" id="alamat" size="60"/></td>
          </tr>
          <tr>
            <td height="25" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="style1" value="Simpan" />
              &nbsp;
              <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
  </table>
</form>
</body>
</html>
