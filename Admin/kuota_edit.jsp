<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {
	font-size: 12px;
	font-weight: bold;
}
.style4 {font-family: "Times New Roman"; font-size: 12px; }
.style7 {font-weight: bold}
.style8 {font-weight: bold}
-->
</style>
</head>
<%
	String kunci = request.getParameter("kode");
	String sql="select * from tahun_ajaran where tahun_ajaran_id='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="kuota_edit_simpan.jsp" method="post">
<p align="center">&nbsp;</p>
<p align="center" class="style2">EDIT JUMLAH SISWA DITERIMA</p>
<table width="399" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">

          <tr class="style1">
            <td><div align="center" class="style4">Id</div></td>
            <td><div align="center" class="style4">Jumlah Diterima</div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr class="style1">
            <td width="61"><div align="center">
              <input name="tahun_ajaran_id" type="text" id="tahun_ajaran_id" size="10" readonly="readonly" value="<%out.print(rs.getString("tahun_ajaran_id"));%>"/>
            </div></td>
            <td width="122"><div align="center">
              <input name="kuota" type="text" id="kuota" size="20" value="<%out.print(rs.getString("kuota"));%>"/>
            </div></td>
            <td width="62"><input name="Submit" type="submit" class="style7" value="Simpan" /></td>
            <td width="49"><input name="Submit2" type="button" class="style8" onclick="window.history.back()" value="Batal"/></td>
          </tr>
        </table>
</form>
</body>
</html>
