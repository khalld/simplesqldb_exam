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
			</div>
		</div>
	</section>

	<article class="panel">
		<div class="panel__copy">



			<html>
			<head>
			<title><!--insert data in database using mysqli--></title>
			<link rel="stylesheet" type="text/css" href="style.css">
			</head>
			<body>

			<div id="main">
			<h1>Form segnalazioni</h1>
			<p>Cosa fare quando si intende segnalare un caso di maltrattamento? Chiunque, che sia privato cittadino o un’associazione,
				nei casi in cui sia <b>TESTIMONE</b> di un <b>REATO</b> deve rivolgersi ad un qualsiasi organo di Polizia Giudiziaria, segnalando l’illecito
				e richiedendo un intervento per accertare il reato ed impedire che questi venga portato ad ulteriori conseguenze.
				Per effettuare una segnalazione, potete compilare il form di segnalazione in fondo alla pagina<br><br>
				<b>TUTTE</b> le segnalazioni verranno prese a carico e verificate dai volontari del Nucleo Antimaltrattamento.
				Ricordiamo che per segnalazioni urgenti o per situazioni dove ci siano animali in pericolo è d’obbligo rivolgersi direttamente
	 			alle Autorità preposte, <b>chiamando il 112</b>.<br></p>
			<hr>
			<form action="" method="post">
			<label>Il tuo nome :</label>
			<input type="text" name="segn_name" id="name" required="required" placeholder="Inserisci il tuo nome"/><br /><br />
			<label>Il tuo cognome :</label>
			<input type="text" name="segn_surn" id="surn" required="required" placeholder="Inserisci il tuo cognome"/><br /><br />
			<label>La tua Email :</label>
			<input type="email" name="segn_email" id="email" required="required" placeholder="email@mail.com"/><br/><br />
			<label>Recapito telefonico :</label>
			<input type="text" name="segn_tel" id="telefono" required="required" placeholder="0000000000"/><br/><br />
			<label>Il tuo oggetto :</label>
			<input type="text" name="ogg_segn" id="oggetto" required="required" placeholder="Maltrattamento/Randagismo/Abbandono"/><br /><br />
			<label>Testo segnalazione :</label>
			<input type="text" name="txt_segn" id="testo_segnal" required="required" placeholder="Descrizione della segnalazione"/><br /><br />
			<input type="submit" value=" Submit " name="submit"/><br />
			</form>

			<!-- Right side div -->

			</div>
			<?php
			if(isset($_POST["submit"])){
			$servername = "localhost";
			$username = "root";
			$password = "";
			$dbname = "canile";

			// Create connection
			$conn = new mysqli($servername, $username, $password, $dbname);
			// Check connection
			if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
			}

			$sql = "INSERT INTO segnalazioni (nome_segnalatore, cognome_segnalatore, email_segnalatore, segnalatore_tel, oggetto_segnalazione, testo_segnalazione)
			VALUES ('".$_POST["segn_name"]."','".$_POST["segn_surn"]."','".$_POST["segn_email"]."','".$_POST["segn_tel"]."','".$_POST["ogg_segn"]."','".$_POST["txt_segn"]."')";

			if ($conn->query($sql) === TRUE) {
			echo "<script type= 'text/javascript'>alert('New record created successfully');</script>";
			} else {
			echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
			}

			$conn->close();
			}
			?>
			</body>
			</html>



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
