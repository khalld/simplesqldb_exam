<?php
// estrazione dei dati con mysqli_fetch_array()
// connessione al database
$link = @mysqli_connect("localhost", "root", "", "canile");

// controllo sullo stato della connessione
if (mysqli_connect_errno())
{
  echo "Connessione fallita: " . die (mysqli_connect_error());
}

 ?>
