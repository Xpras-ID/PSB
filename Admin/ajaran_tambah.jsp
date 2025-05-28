<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
}
-->
</style>
</head>

<body background="../images/back2.png">
 <form id="form1" name="form1" method="post" action="ajaran_simpan.jsp">
  <p>&nbsp;</p>
  <p align="center" class="style25 style1">TAMBAH TAHUN AJARAN</p>
  <p>&nbsp;</p>
  <table width="872" border="0" align="center" cellpadding="5" cellspacing="0">

    <tr>
      <td width="60"><span class="style1">Kode</span></td>
      <td width="100"><label>
        <input name="tahun_ajaran_id" type="text" id="tahun_ajaran_id" size="15" />
      </label></td>
      <td width="97"><span class="style1">Tahun Ajaran</span></td>
      <td width="160"><input name="tahun" type="text" id="tahun" size="25" /></td>
      <td width="48"><strong>Kuota</strong></td>
      <td width="159"><input name="kuota" type="text" id="kuota" size="25" /></td>
      <td width="68"><input name="button" type="submit" class="style1" id="button" value="Tambah" /></td>
      <td width="100"><input name="button2" type="button" class="style1" id="button2" value="Batal" onclick="window.history.back()"/></td>
    </tr>
  </table>
</form>
</body>
</html>
