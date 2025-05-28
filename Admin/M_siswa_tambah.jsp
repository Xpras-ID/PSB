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

<script type="text/javascript">
<!--
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' harus diisi dengan angka.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' masih kosong harus diisi.\n'; }
    } if (errors) alert('Peringatan !!:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
//-->
</script>
</head>
<link type="text/css" href="development-bundle/themes/sunny/ui.all.css" rel="stylesheet" />
                  <script type="text/javascript" src="development-bundle/jquery-1.3.2.js"></script>
                  <script type="text/javascript" src="development-bundle/ui/ui.datepicker.js"></script>
	 <script type="text/javascript" src="development-bundle/ui/i18n/ui.datepicker-id.js"></script>
	  <script type="text/javascript" src="development-bundle/ui/effects.core.js"></script>
                 
            <script type="text/javascript">
 $(document).ready(function(){
      
		 $("#tgl_pendaftaran").datepicker({
									dateFormat :"yy-mm-dd",
									changeMonth : true,
									changeYear : true,			 
				 
									 });
		 $("#tgl_lahir").datepicker({
									 dateFormat :"yy-mm-dd",
									 changeMonth : true,
									 changeYear : true,
									 });
	});
 </script>
 

 
<body background="../images/back2.png">
<form id="form1" name="form1" action="M_siswa_tambah_simpan.jsp" method="post">
<p align="center" class="style1">TAMBAH DATA CALON SISWA</p>
<table width="661" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">
          
<tr>
  <td colspan="3"><span class="style2 style8 style9 style10"><span class="style9"><blink><span class="style13">Calon Siswa</span></blink></span></span></td>
  </tr>
<tr>
  <td>Tgl Pendaftaran</td>
            <td>:</td>
            <td><input name="tgl_pendaftaran" type="text" id="tgl_pendaftaran" size="30" /></td>
          </tr>
          <tr>
            <td width="229"><div align="left" class="style2">Nama Lengkap</div></td>
            <td width="5">:</td>
            <td width="397"><label>
              <input name="nama_pendaftar" type="text" id="nama_pendaftar" size="50"/>
            </label></td>
    </tr>
          <tr>
            <td><div align="left" class="style2">Tempat lahir </div></td>
            <td>:</td>
            <td><label>
              <input name="tempat_lahir" type="text" id="tempat_lahir" size="50"/>
            </label></td>
          </tr>
          <tr>
            <td><div align="left" class="style2">Tanggal Lahir </div></td>
            <td>:</td>
            <td><label>
            <input name="tgl_lahir" type="text" id="tgl_lahir" size="20" />
            </label></td>
          </tr>
          <tr>
            <td><div align="left" class="style2">Jenis Kelamin </div></td>
            <td>:</td>
            <td><label>
              <select name="jenis_kelamin_id" class="tombol" id="jenis_kelamin_id" width="50">
              <option value="0"  selected="selected">--Pilih Jenis Kelamin
                <%
			    Class.forName(url);
				Connection jenis_kelamin_id= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_jenis = jenis_kelamin_id.createStatement();
				String sql_jenis="select * from jenis_kelamin";
				ResultSet rs_jenis=Stat_jenis.executeQuery(sql_jenis);
				while(rs_jenis.next())
				{ 
					String id_jenis = rs_jenis.getString("jenis_kelamin_id");
					String Jenis_kelamin2 = rs_jenis.getString("jenis_kelamin");
					out.println("<option value=\"" +Jenis_kelamin2+"\">"+Jenis_kelamin2+"</option>"); 
			 	}	
				
			%>
              </option>
              </select>
            </label></td>
          </tr>
          <tr>
            <td><div align="left" class="style2">Agama</div></td>
            <td>:</td>
            <td><label>
<select name="agama_id" class="tombol" id="agama_id" width="50">
  <option value="0"  selected="selected">--Pilih Agama
  <%
			    Class.forName(url);
				Connection agama= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_agama = agama.createStatement();
				String sql_agama="select * from agama";
				ResultSet rs_agama=Stat_agama.executeQuery(sql_agama);
				while(rs_agama.next())
				{ 
					String id_agama = rs_agama.getString("agama_id");
					String Agama = rs_agama.getString("agama");
					out.println("<option value=\"" +Agama+"\">"+Agama+"</option>"); 
			 	}	
				
			%>
  </option>
</select>
            </label></td>
          </tr>
          <tr>
            <td height="30"><div align="left" class="style2">Alamat Lengkap</div></td>
            <td>:</td>
            <td><label>
              <textarea name="alamat_siswa" id="alamat_siswa" cols="50" rows="2"></textarea>
            </label></td>
          </tr>
          
          <tr>
            <td height="25" class="style2">Tahun Ajaran</td>
            <td>:</td>
            <td><select name="tahun_ajaran_id" class="tombol" id="tahun_ajaran_id" width="50">
              <option value="0"  selected="selected">--Pilih
                <%
			    Class.forName(url);
				Connection tahun_ajaran= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_tahun = tahun_ajaran.createStatement();
				String sql_tahun="select * from tahun_ajaran";
				ResultSet rs_tahun=Stat_tahun.executeQuery(sql_tahun);
				while(rs_tahun.next())
				{ 
					String id_thnAjaran = rs_tahun.getString("tahun_ajaran_id");
					String thn_ajaran = rs_tahun.getString("tahun");
					out.println("<option value=\"" +thn_ajaran+"\">"+thn_ajaran+"</option>"); 
			 	}	
				
			%>
              </option>
            </select></td>
    </tr>
          
          
          <tr>
            <td height="25" class="style2">Foto</td>
            <td>&nbsp;</td>
            <td><label>
            <input name="foto" type="file" id="foto" size="20" />
            </label></td>
          </tr>
          <tr>
            <td height="22" colspan="3" class="style2"><span class="style2 style8 style9 style13"><span class="style9"><blink>Asal SekolahCalon Siswa</blink></span></span></td>
    </tr>
          <tr>
            <td class="style2">Asal Sekolah </td>
            <td>:</td>
            <td><select name="asal_sekolah" class="tombol" id="asal_sekolah" width="50">
              <option value="0"  selected="selected">--Pilih
              <%
			    Class.forName(url);
				Connection asal= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_asal = asal.createStatement();
				String sql_asal="select * from asal_sekolah";
				ResultSet rs_asal=Stat_asal.executeQuery(sql_asal);
				while(rs_asal.next())
				{ 
					String id_asal = rs_asal.getString("asal_sekolah_id");
					String nama = rs_asal.getString("nama");
					out.println("<option value=\"" +nama+"\">"+nama+"</option>"); 
			 	}	
				
			%>
              </option>
            </select>
              <span class="style13 style9"><a href="asal_sekolah_tambah.jsp" target="mainFrame">Tambah</a></span></td>
          </tr>
          
          <tr>
            <td>No. STTB dan Tgl STTB</td>
            <td>&nbsp;</td>
            <td><input name="no_sttb" type="text" id="no_sttb" size="50"/></td>
          </tr>
          
          
          <tr>
            <td height="25" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22" colspan="3" class="style2"><span class="style9 style13"><blink>Orang Tua Calon Siswa</blink></span></td>
    </tr>
          <tr>
            <td>Nama Ayah </td>
            <td>:</td>
            <td><label>
              <input name="nama_ayah" type="text" id="nama_ayah" size="50" />
            </label></td>
          </tr>
          <tr>
            <td>Nama Ibu </td>
            <td>:</td>
            <td><label>
              <input name="nama_ibu" type="text" id="nama_ibu" size="50" />
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ayah</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ayah" type="text" id="pekerjaan_ayah" size="40" />
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ibu</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ibu" type="text" id="pekerjaan_ibu" size="40" />
            </label></td>
          </tr>
          <tr>
            <td>Alamat Orang Tua</td>
            <td>:</td>
            <td><label>
              <textarea name="alamat_ortu" id="alamat_ortu" cols="50" rows="3"></textarea>
            </label></td>
          </tr>
          <tr>
            <td height="28">No Telepon Orang Tua</td>
            <td>:</td>
            <td><label>
              <input name="no_tlp_ortu" type="text" id="no_tlp_ortu" size="30" />
            </label></td>
          </tr>
          
          <tr>
            <td height="31" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22" colspan="3" class="style9 style13"><blink>Data Nilai Calon Siswa</blink></td>
</tr>
          <tr>
            <td height="25" class="style2">Jumlah Nilai UASBN</td>
            <td>:</td>
            <td><input name="rata_nilai" type="text" id="rata_nilai" size="25" /></td>
          </tr>
          <tr>
            <td height="25" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="style1" onclick="MM_validateForm('tgl_pendaftaran','','R','nama_pendaftar','','R','tempat_lahir','','R','tgl_lahir','','R','asal_sekolah','','R','nama_ayah','','R','nama_ibu','','R','pekerjaan_ayah','','R','pekerjaan_ibu','','R','rata_nilai','','R','alamat_siswa','','R','alamat_ortu','','R');return document.MM_returnValue" value="Simpan" />
            &nbsp; <input name="button2" type="reset" class="style1" id="button2" value="Refresh" /> 
            &nbsp;
            <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
  </table>
</form>
</body>
</html>
