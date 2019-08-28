<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/4.2.0/normalize.css">
	<link rel="stylesheet" href="style.css"> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <meta name="viewport" content="width=device-width, initial-scale=1">
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

	<div class="cover">
		<div class="cover__filter"> </div>
		<div class="cover__caption">
			<div class="cover__caption__copy">
				<h1>Vuoi regalare un cucciolo? </h1>
				<h2>O vuoi semplicemente adottare un amico a quattro zampe?</h2>
				<a href="cani_disponibili_adozione.php" class="button">Vedi la disponibilità</a>
			</div>
		</div>
	</div>

	<section class="cards clearfix">
		<div class="card">
			<img class="card__image"src="image\veterinario.jpg" alt="Veterinari">
			<div class="card__copy">
				<h3>I nostri veterinari</h3>
				<p><a href="elenco_veterinari.php">Visualizza</a> l'elenco dei veterinari che giornalmente curano i nostri cani.</p>

</p>
			</div>
		</div>
		<div class="card">
			<img class="card__image"src="image\volontari.jpg" alt="Volontari">
			<div class="card__copy">
				<h3>Ultime adozioni</h3>
				<p><a href="elenco_adozioni.php">Visualizza</a> le ultime adozioni.</p>
			</div>
		</div>
		<div class="card">
			<img class="card__image"src="image\cuccioli.jpg" alt="Cuccioli">
			<div class="card__copy">
				<h3>Indeciso?</h3>
				<p>Non sai che cane sarebbe preferibile adottare? <a href="elenco_razze.php">Consulta</a> il nostro database di razze per fare la giusta scelta!</p>
			</div>
		</div>
	</section>

		<section class="banner clearfix">
			<div class="banner__copy">
				<div class="banner__copy__text">
					<h3>Fai la scelta giusta, adotta!</h3>
					<p>Prima di acquistare un cane o un gatto perché non rivolgersi ad un canile, dove tanti animali abbandonati aspettano un nuovo
						padrone?<br>
						Decidere di adottare un animale è una decisione molto importante poiché cambierà la vostra vita.
						Significa organizzare le vacanze tenendo in considerazione il vostro nuovo amico, assumersene gli oneri
						economici, educarlo alla convivenza in famiglia e fuori. Ricorda, adottare un cane o un gatto significa assumersene
						piena responsabilità per tutta la sua vita!</p>
				</div>
			</div>
			<div class="banner__image"></div>
		</section>


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
