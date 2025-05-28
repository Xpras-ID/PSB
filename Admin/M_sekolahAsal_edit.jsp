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
.style1 {font-family: "Times New Roman"}
.style3 {
	font-family: "Times New Roman";
	font-weight: bold;
	font-size: 16px;
}
.style4 {
	font-size: 12px;
	color: #FF0000;
}
-->
</style>
<script type="text/javascript">
<!--
function MM_popupMsg(msg) { //v1.0
  alert(msg);
}
//-->
</script>
</head>
<%
	String kunci = request.getParameter("kode");
	String sql="select * from asal_sekolah where asal_sekolah_id='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="M_sekolahAsal_edit_simpan.jsp" method="post">
<p align="center">&nbsp;</p>
<p align="center"><strong>EDIT DATA SEKOLAH ASAL</strong></p>
<table width="688" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">
          <tr>
            <td><span class="style3">No</span></td>
            <td><span class="style3">:</span></td>
            <td><input name="asal_sekolah_id" type="text" id="asal_sekolah_id" size="20" readonly="readonly" value="<%out.print(rs.getString("asal_sekolah_id"));%>"/> 
              <span class="style4">*Read Only</span></td>
    </tr>
          <tr>
            <td><span class="style3">Nama Sekolah</span></td>
            <td><span class="style3">:</span></td>
            <td><input name="nama" type="text" id="nama" size="50" value="<%out.print(rs.getString("nama"));%>"/></td>
          </tr>
          <tr>
            <td width="154" class="style1"><strong>Alamat</strong></td>
            <td width="17"><span class="style3">:</span></td>
            <td width="405"><input name="alamat" type="text" id="alamat" size="50" value="<%out.print(rs.getString("alamat"));%>" /></td>
          </tr>
          
          
          <tr>
            <td height="29">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="style3" value="Simpan" />
              <input name="hapus" type="button" class="style3" id="hapus" onclick="MM_popupMsg('Anda yakin akan menghapus data ini?');window.open('asal_sekolah_hapus.jsp?kode=<%out.print(kunci);%>','mainFrame')" value="Hapus" />
            <input name="Submit2" type="button" class="style3" onclick="window.history.back()" value="Batal"/></td>
          </tr>
  </table>
</form>
</body>
</html>
