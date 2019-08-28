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
			<h1>Chi siamo, la nostra storia</h1>
			<hr>
			<p>Chi Siamo
				L’A.DI.CA. (Associazione per la Difesa del Cane) è un’associazione senza fini di lucro, apartitica e apolitica, che da quasi trent’anni opera sul territorio catanese con lo scopo di assicurare rifugio, assistenza e cure a cani abbandonati, maltrattati, provenienti da canili lager o da situazioni di disagio.
				Nel 1988, a un anno dalla sua fondazione, l’A.DI.CA.  ha ottenuto in concessione dal comune di Catania l’affitto di quella che è stata la sua sede fino al 2014, un’ex porcilaia riattata a canile e sita a Borgo San Giovanni, presso la frazione Nesima.
				Il rifugio ora nel nuovo canile sito in Catania, che negli anni ha dato asilo e permesso di trovare casa a oltre 4000  cani, in questo momento ospita all’incirca 100 trovatelli.
				Per anni l’A.DI.CA. è stata in trattative con il Comune per ottenere l’assegnazione di una sede più consona e funzionale, meno fatiscente e pericolante dell’attuale. Nel 2010 il Comune ha finalmente destinato alla realizzazione del nuovo rifugio A.DI.CA. un terreno di 11.550  mq in zona San Giovanni li cuti.
				I lavori per la costruzione del nuovo canile, progettato da A.DI.CA. a misura di cane e secondo i dettami più attuali dell’edilizia a impatto zero, sono iniziati nel Giugno 2013.
				L’operato di A.DI.CA. è sostenuto dal contributo imprescindibile dei volontari, che partecipano ad assicurare cibo, cure, affetto e svago per 365 giorni l’anno ai cani ospiti del canile, e di tutti coloro  che, con le loro donazioni, sostengono l’attività di A.DI.CA. all’interno e all’esterno delle mura del canile.
				Dal 2005 A.DI.CA. è iscritta al registro generale regionale del volontariato, sezione provinciale di Catania, ed è riconosciuta come Onlus.<br>
				<br><br><b>La Filosofia che ci guida</b><br><br>
				La filosofia che negli anni ha guidato l’operato di A.DI.CA. si basa sulla convinzione che sia necessario e possibile superare la visione specista che fino ad oggi ha contraddistinto il rapporto uomo-animale e, più nello specifico, il rapporto uomo-cane.
				Tale filosofia si concretizza nel tentativo di sconfiggere, da un lato, il fenomeno del randagismo, dall’altro quello dell’ancor oggi troppo diffusa tendenza al maltrattamento animale.
				Gli obiettivi che, nello specifico, A.DI.CA. persegue sono:<br><br>
				1) <b>ASSICURARE IL PIÙ ALTO LIVELLO DI BENESSERE AL CANE OSPITE DEL CANILE, soddisfacendo ogni sua esigenza fisiologica, cognitiva ed etologica.</b><br>
				2) <b>TROVARE VELOCEMENTE UN OTTIMO AFFIDO A OGNI CANE OSPITE DEL CANILE<br></b>
				3) <b>SENSIBILIZZARE L’OPINIONE PUBBLICA, per prevenire l’abbandono, contrastare i fenomeni di maltrattamento e incentivare le pratiche dell’adozione in canile e della sterilizzazione preventiva.</b><br>
 			<br><a href="elenco_volontari.php">Il nostro Staff</a><br><br>
			<i>Per 365 giorni l’anno, lo staff dell’A.DI.CA. è impegnato, da prima dell’alba fino a dopo il tramonto, nell’accogliere, accudire e affidare i cani ospiti del rifugio.</p></i>
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
