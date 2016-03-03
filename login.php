<html>
  <head>
    <title> FRAME SERVER </title>
   
    <style>
      h1{
	  font-size: 250%;
	}
    </style>
  
  </head>
  
  <body>
    
    <h1> LOGIN </h1>
    
     <FORM METHOD="POST" ACTION="http://localhost/~compito/frameserver/login.php">
       User: <br /> <input type="text" name="Account" value="" /> <br />
       Password: <br /> <input type="password" name="Password" value="" /> <br />
      <input type="submit" name="ACCEDI" value="ACCEDI"/>
    </FORM>
    
    <?php
      
      $account=$_POST["Account"];
      $password=$_POST["Password"];
      
      $risposta=0;
      $livello=0;
      
      $query1="use FrameServer";
      $query2="select Nome,Psw,LivPriv from Utente";
      
      $connessione=mysql_connect("localhost","root","");
      
      $ris1=mysql_query($query1,$connessione) or die("errore nella selezione della query1");      
      $ris2=mysql_query($query2,$connessione) or die("errore nella selezione della query2");
      
      if(isset($_POST["ACCEDI"]))
      {
	
	while(($riga=mysql_fetch_array($ris2)) && $risposta!=1)
	{
	
	  if($riga["Nome"] == $account && $riga["Psw"] == $password && !empty($account) && !empty($password))
	  {
	    
	    $risposta=1;
	    $livello=$riga["LivPriv"];
	    
	  }
		
	}      
	if($risposta==1)
	{
	  echo "Accesso effetuato. "."Benvenuto ".$account."<br />";
	  echo "Livello privilegio ".$livello;
	  //link frameplayer
	 }
	else
	  echo "Account o Password errari. "."Riprovare";
      
      }		
     
    ?>
  </body>
</html>
