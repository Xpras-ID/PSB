<html>
  <head>
    <link type="text/css" href="development-bundle/css/tabs-1.css" rel="stylesheet" />   
    <script type="text/javascript" src="development-bundle/jquery.tools.min.js"></script>

    <script type="text/javascript">
$(document).ready(function(){
      	$("ul.tabs").tabs("div.panes > div");
	    });
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
</script>
    <style type="text/css">
<!--
.style4 {font-size: 15px}
.style5 {
	font-family: "Bradley Hand ITC";
	font-weight: bold;
	font-size: 18px;
}
-->
    </style>
</head>
    <body background="../images/back2.png" onLoad="MM_preloadImages('../images/User2.png','../images/UserX2.png')">
      <!-- tabs -->
<ul class="tabs">
	       <li><a class="" href="#">Home</a></li>
	       <li><a class="" href="#">Master Data</a></li>
        <li><a class="" href="#">Hasil Seleksi</a></li>
           <li><a class="" href="#">Laporan</a></li>
           
    </ul>

    <!-- panes (content untuk masing-masing tab) -->
    <div class="panes">
      <div style="display: block;">
        <table width="275" height="26" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="151" align="center"><a href="profil.jsp" target="mainFrame" class="style4">Profil</a></td>
          <td width="138" align="center"><a href="login.jsp" target="mainFrame">Login</a></td>
          <td width="141" align="center"><a href="logout.jsp" target="mainFrame">Logout</a></td>
        </tr>
      </table>
      </div>
        <div style="display: none;"> <table width="874" height="26" border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td width="130" align="center"><a href="M_siswa_tambah.jsp" target="mainFrame">Input Data</a></td>
          <td width="131" align="center"><a href="M_siswa.jsp" target="mainFrame">Data Calon Siswa</a></td>
          <td width="141" align="center"><a href="M_sekolahAsal.jsp" target="mainFrame">Data Asal Sekolah</a></td>
          <td width="130" align="center"><a href="M_ortu.jsp" target="mainFrame" >Data Orang Tua</a></td>
          <td width="96" align="center"><a href="M_nilai.jsp" target="mainFrame" >Data Nilai</a></td>
         
          <td width="92" align="center"></td>
        </tr>
      </table></div>
       <div style="display: none;"><table width="258" height="26" border="0" cellpadding="2" cellspacing="0">
        <tr>
<td width="63" align="center"><a href="ajaran.jsp" target="mainFrame" class="style2">Tahun_Ajaran</a></a></td>
          
          <td width="65" align="center"><a href="seleksiTHN.jsp" target="mainFrame" class="style2">Seleksi</a></td>
        </tr>
      </table></div>
       <div style="display: none;">
       <table width="304" height="26" border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td width="99" align="center"><a href="http://localhost:8080/result?report=seluruh_siswa.fr3" target="mainFrame" class="style3">Siswa Yang Mendaftar</a></td>
          <td width="99" align="center"><a href="http://localhost:8080/result?report=siswa_diterima.fr3" target="mainFrame" class="style3">Siswa Diterima</a></td>
         
      </table></div>
       <div style="display: none;">
       <table width="304" height="61" border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td width="157" align="center"><a href="about.jsp" target="mainFrame" onClick="MM_nbGroup('down','group1','about','',1)" onMouseOver="MM_nbGroup('over','about','../images/about2.png','',1)" onMouseOut="MM_nbGroup('out')"><img src="../images/about.png" name="about" width="57" height="58" border="0"></a></td>
          <td width="41" align="center"></td>
          <td width="94" align="center"></td>
        </tr>
      </table></div>
    </div>
    
    </body>
</html>
