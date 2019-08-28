<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/4.2.0/normalize.css">
	<link rel="stylesheet" href="style.css">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<header class="header clearfix">
		<a href="index.php" class="header__logo"><img src="image\logo2.png" width="30" height="30"></img></a>
		<a href="" class="header__icon-bar">
			<span></span>
			<span></span>
			<span></span>
		</a>
		<ul class="header__menu animate">
			<li class="header__menu__item"><a href="index.php">Home</a></li>
			<li class="header__menu__item"><a href="chi_siamo.php">Chi siamo</a></li>
			<li class="header__menu__item"><a href="donazioni.php">Donazioni</a></li>
			<li class="header__menu__item"><a href="contact_form.php">Segnalazioni</a></li>
		</ul>
	</header>

	<section class="cover cover--single">
		<div class="cover__filter"></div>
		<div class="cover__caption">
			<div class="cover__caption__copy">
				<!--<h1>Title of the Article </h1> -->


			</div>
		</div>
	</section>


	<article class="panel">
		<div class="panel__copy">
			<h2 class="panel__copy__title">Elenco veterinari volontari</h2>
			<p class="panel__copy__meta">Elenco delle <a href="elenco_visite.php">visite</a></p>
			<html>
			<style>
			table  { border-collapse:collapse }
			td, th { border:1px solid #ddd; padding:8px; }
	</style>

			<table>
				<tr>
					<td>Nome</td>
					<td>Cognome</td>
					<td>Telefono</td>
					<td>Email</td>
				</tr>

	<?php
				require('connection.php');

			// esecuzione della query
			$query = "SELECT nome, cognome, numero_telefono, email FROM veterinario";
			$result = @mysqli_query($link, $query);

		  // controllo sul numero dei record coinvolti
			if(@mysqli_num_rows($result)!=0)
			{

			/*$row['nome'] . "<br>";*/
			// risultato sotto forma di array asscociativo
			while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				echo '<tr>';
				echo '<td>' . $row['nome'] . '</td>';
				echo '<td>' . $row['cognome'] . '</td>';
				echo '<td>' . $row['numero_telefono'] . '</td>';
				echo '<td>' . $row['email'] . '</td>';
				echo '</tr>';
			}
			}

			// liberazione della memoria dal risultato della query
			@mysqli_free_result($result);

			// chiusura della connessione
			@mysqli_close($link);


	?>
	</table>

		</form>
		</div>
	</article>

<footer class="footer">
	<p>Se il tuo cane non sta bene e hai bisogno di un consulto, se hai un'emergenza magari notturna, se solo senti la necessità di una
		rassicurazione e sei lontano da casa, i servizi di pronto soccorso e di consulenza veterinaria in Italia fanno al caso tuo.
		Ci sono diverse strutture di pronto soccorso per i cani, private e pubbliche, organizzate su base locale dalle singole ASL o da
		società private. Da diversi anni esiste il numero verde gratuito "<b>Purina per voi</b>": al numero <b>800.525.505</b> rispondono 24
		ore su 24 specialisti del settore che aiutano e forniscono informazioni ma anche consulenze veterinarie di emergenza. </p>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	 $(document).ready(function(){

			$(".header__icon-bar").click(function(e){

				$(".header__menu").toggleClass('is-open');
				e.preventDefault();

			});
	 });
</script>

</meta></meta></meta>
</body>
</html>
