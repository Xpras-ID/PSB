<%!
   String NAMA_SERVER = "sun.jdbc.odbc.JdbcOdbcDriver";
   String NAMA_DB = "jdbc:odbc:psb_1";
   String NAMA_USER   = "sa";
   String PASSWORD    = "210390";

   public String gantiKosong(String par) {
      String st = par;
      if (st == null)
         st = "";

      return(st);
   }
%>

