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
	String sql="select * from M_siswa where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="M_ortu_edit_simpan.jsp" method="post">
<p align="center">&nbsp;</p>
<p align="center"><strong>EDIT DATA ORANG TUA</strong></p>
<table width="604" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">

          <tr class="style1">
            <td>No Pendaftaran</td>
            <td>:</td>
            <td><input name="no_pendaftaran" type="text" id="no_pendaftaran" size="20" readonly="readonly" value="<%out.print(rs.getString("no_pendaftaran"));%>"/>
              <span class="style2">*Read Only</span></td>
    </tr>
          <tr class="style1">
            <td>Nama Calon Siswa</td>
            <td>:</td>
            <td><input name="nama_pendaftar" type="text" id="nama_pendaftar" size="50" value="<%out.print(rs.getString("nama_pendaftar"));%>"/></td>
          </tr>
          <tr>
            <td width="155">Nama Ayah </td>
            <td width="21">:</td>
            <td width="406"><label>
              <input name="nama_ayah" type="text" id="nama_ayah" size="50" value="<%out.print(rs.getString("nama_ayah"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Nama Ibu </td>
            <td>:</td>
            <td><label>
              <input name="nama_ibu" type="text" id="nama_ibu" size="50" value="<%out.print(rs.getString("nama_ibu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ayah</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ayah" type="text" id="pekerjaan_ayah" size="40" value="<%out.print(rs.getString("pekerjaan_ayah"));%>" />
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ibu</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ibu" type="text" id="pekerjaan_ibu" size="40" value="<%out.print(rs.getString("pekerjaan_ibu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Alamat Orang Tua</td>
            <td>:</td>
            <td><label>
            <input name="alamat_ortu" type="text" id="alamat_ortu" size="40" value="<%out.print(rs.getString("alamat_ortu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td height="28">No Telepon Orang Tua</td>
            <td>:</td>
            <td><label>
              <input name="no_tlp_ortu" type="text" id="no_tlp_ortu" size="40" value="<%out.print(rs.getString("no_tlp_ortu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="style1" value="Simpan" />
            &nbsp;
            <input name="hapus" type="button" class="style1" id="hapus" onclick="MM_popupMsg('Anda yakin akan menghapus data ini?');window.open('M_siswa_hapus.jsp?kode=<%out.print(kunci);%>','mainFrame')" value="Hapus" />
            &nbsp;
            <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
        </table>
</form>
</body>
</html>
