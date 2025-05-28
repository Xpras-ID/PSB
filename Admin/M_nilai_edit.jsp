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
	String sql="select * from M_siswa where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="M_nilai_edit_simpan.jsp" method="post">
<p align="center">&nbsp;</p>
<p align="center"><strong>EDIT DATA NILAI</strong></p>
<p align="center">&nbsp;</p>
<table width="767" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">

          <tr class="style1">
            <td><div align="center">No Pendaftaran</div></td>
            <td><div align="center">Nama Calon Siswa</div></td>
            <td><div align="center">Jumlah Nilai UASBN</div></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr class="style1">
            <td width="233"><div align="center">
              <input name="no_pendaftaran" type="text" id="no_pendaftaran" size="30" readonly="readonly" value="<%out.print(rs.getString("no_pendaftaran"));%>"/>
            </div></td>
            <td width="284"><div align="center">
              <input name="nama_pendaftar" type="text" id="nama_pendaftar" size="30" value="<%out.print(rs.getString("nama_pendaftar"));%>"/>
            </div></td>
            <td width="419"><div align="center">
              <input name="rata_nilai" type="text" id="rata_nilai" size="30" value="<%out.print(rs.getString("rata_nilai"));%>"/>
            </div></td>
            <td width="77"><input name="Submit" type="submit" class="style1" value="Simpan" /></td>
            <td width="66"><input name="hapus" type="button" class="style1" id="hapus" onclick="MM_popupMsg('Anda yakin akan menghapus data ini?');window.open('M_siswa_hapus.jsp?kode=<%out.print(kunci);%>','mainFrame')" value="Hapus" /></td>
            <td width="200"><input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
        </table>
</form>
</body>
</html>
