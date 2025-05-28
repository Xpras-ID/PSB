<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-weight: bold;
	color: #0000FF;
	font-family: "Times New Roman";
}
.style3 {
	color: #000000;
	font-weight: bold;
}
.style4 {
	color: #0000FF
}
.style5 {
	color: #FF0000;
	font-size: 10px;
}
.style7 {color: #0000FF; font-size: 14px; }
-->
</style>
</head>

<%
	String kunci = request.getParameter("kode");
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement();
	String sql= "SELECT * FROM View_Detail WHERE no_pendaftaran ='"+kunci+"' ";
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form>
<p align="center"><strong>DETAIL DATA CALON SISWA</strong></p>
 <table width="713" border="0" align="center" cellpadding="2" cellspacing="0" class="style3">
<tr>
  <td height="18" colspan="4"><p class="style5">&nbsp;</p>    </td>
  </tr>
<tr>
  <td>&nbsp;</td>
            <td><span class="style7">No Pendaftaran</span></td>
            <td>:</td>
      <td><span class="style4">
        <%out.print(rs.getString("no_pendaftaran"));%>
      </span></td>
    </tr>
          
          <tr>
            <td width="160">&nbsp;</td>
            <td width="196"><div align="left" class="style3">Nama Calon Siswa </div></td>
            <td width="11">:</td>
            <td width="330">
<label>
              <%out.print(rs.getString("nama_pendaftar"));%>
        </label>  </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td><div align="left" class="style3">Tempat lahir </div></td>
            <td>:</td>
            <td>
  <label>
              <%out.print(rs.getString("tempat_lahir"));%>
        </label>  </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="32"><div align="left" class="style3">Tanggal Lahir </div></td>
            <td>:</td>
            <td>
              <label>
           <%out.print(rs.getString("tgl_lahir"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td><div align="left" class="style3">Jenis Kelamin </div></td>
            <td>:</td>
            <td>
  <label>
              <%out.print(rs.getString("jenis_kelamin_id"));%>
        </label>  </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td><div align="left" class="style3">Agama</div></td>
            <td>:</td>
            <td>
  <label>
              <%out.print(rs.getString("agama_id"));%>
        </label>  </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><div align="left" class="style3">Alamat Lengkap</div></td>
            <td>:</td>
            <td>
  <label>
              <%out.print(rs.getString("alamat_siswa"));%>
        </label>  </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="25">Tahun Ajaran</td>
            <td>:</td>
            <td>
            <%out.print(rs.getString("tahun_ajaran_id"));%>            </td>
    </tr>
          
          <tr>
            <td colspan="4">&nbsp;</td>
          </tr>
          
          <tr>
            <td>&nbsp;</td>
            <td>Asal Sekolah </td>
            <td>:</td>
            <td>
            <%out.print(rs.getString("asal_sekolah"));%>            </td>
    </tr>
          
          <tr>
            <td>&nbsp;</td>
            <td>No. STTB</td>
            <td>:</td>
            <td>
            <%out.print(rs.getString("no_sttb"));%>            </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          
          <tr>
            <td>&nbsp;</td>
            <td>Nama Ayah </td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("nama_ayah"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Nama Ibu </td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("nama_ibu"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Pekerjaan Ayah</td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("pekerjaan_ayah"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Pekerjaan Ibu</td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("pekerjaan_ibu"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Alamat Orang Tua</td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("alamat_ortu"));%>
              </label>              </td>
    </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="28">No Telepon Orang Tua</td>
            <td>:</td>
            <td>
              <label>
              <%out.print(rs.getString("no_tlp_ortu"));%>
              </label>              </td>
    </tr>
          <tr>
            <td height="254" colspan="4"><div align="center">
              <p>Image</p>
              <p><img src="image/<%out.print(rs.getString("foto"));%>" width="151" height="186"/></p>
            </div></td>
          </tr>
          <tr>
            <td colspan="4"><div align="center">
              <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Kembali"/>
            </div>              <div align="center"></div></td>
          </tr>
  </table>
</form>
</body>
</html>
