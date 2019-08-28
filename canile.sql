-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 28, 2017 alle 14:48
-- Versione del server: 10.1.26-MariaDB
-- Versione PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canile`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `adozione`
--

CREATE TABLE `adozione` (
  `id_adozione` int(5) UNSIGNED NOT NULL,
  `id_cane` int(5) UNSIGNED NOT NULL,
  `codFiscale_cittadino` varchar(16) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `adozione`
--

INSERT INTO `adozione` (`id_adozione`, `id_cane`, `codFiscale_cittadino`, `data`) VALUES
(2, 6, 'LCTDNF95C12C931P', '2017-09-27'),
(3, 5, 'MRTPRR89D21C654L', '2017-09-28');

-- --------------------------------------------------------

--
-- Struttura della tabella `cane`
--

CREATE TABLE `cane` (
  `id_cane` int(5) UNSIGNED NOT NULL,
  `nome` varchar(10) NOT NULL,
  `sesso` varchar(7) NOT NULL,
  `nascita` date NOT NULL,
  `razza` int(2) UNSIGNED NOT NULL,
  `in_canile_da` date NOT NULL,
  `provenienza` varchar(50) NOT NULL,
  `carattere` text NOT NULL,
  `sterilizzato` varchar(2) NOT NULL,
  `microchippato` varchar(2) NOT NULL,
  `adozione_ideale` text NOT NULL,
  `id_responsabile` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cane`
--

INSERT INTO `cane` (`id_cane`, `nome`, `sesso`, `nascita`, `razza`, `in_canile_da`, `provenienza`, `carattere`, `sterilizzato`, `microchippato`, `adozione_ideale`, `id_responsabile`) VALUES
(1, 'Cesar', 'Maschio', '2013-02-05', 7, '2013-02-05', 'Ritirato da Save The Dogs', 'Cesar come tutti i cani aiutati da Save The Dogs sono scampati ad un destino crudele, molti di loro hanno avuto vita difficile ed è arrivato finalmente il momento di far conoscere loro le cose belle della vita. Cesar sa andare al guinzaglio, è molto curioso del mondo esterno. Socievole con le persone e anche con gli altri cani, nei confronti dei gatti sembra essere intimorito.', 'SI', 'SI', 'Essendo un cane molto equilibrato è possibile l’affido anche con famiglie alla prima esperienza di cani. Si può pensare anche ad una famiglia con bambini abbastanza grandicelli che siano rispettosi nei confronti del cane, in quanto Cesar accetta il contatto ma fatto nel modo corretto e senza essere troppo “pastrugnato”, al contrario sarebbe bello trovare dei bambini che lo sappiano coinvolgere in giochi corretti per lui.  Possibile l’affido in presenza di altri cani facendo prima la prova di compatibilità caratteriale', 1),
(2, 'Rosita', 'Femmina', '2010-08-01', 12, '2017-08-11', 'Recuperata in zona', 'Rosita è una cagnolina brava  con le persone anche se un po’ timidina, socievole con gli altri cani e per le prove che abbiamo fatto sembra essere anche socievole con i gatti. Brava al guinzaglio.', 'SI', 'NO', 'Possibile l’affido anche a persone alla prima esperienza con i cani, la cosa importante è che siano consapevoli che anche se è uno scricciolo ha bisogno come tutti i cani di passeggiate e di fare attività. Possibile l’affido in famiglia dove siano presenti gatti o anche altri cani e in quest’ultimo caso facendo prima la prova di compatibilità caratteriale.', 2),
(3, 'Pablo', 'Maschio', '2011-09-01', 5, '2017-09-01', 'Accalappiato', 'Pablo è un cane meraviglioso, che merita veramente una bella famiglia che lo ami. E’ molto socievole con i suoi simili e ha un’ottima comunicazione, va d’accordo sia con maschi che con femmine. Bravo anche con le persone. E’ molto simpatico e giocherellone, anche se bisogna stare un po’ attenti a non farlo giocare troppo con la pallina, in quanto gli piace molto, ma rischia di mandarlo in fissità. Sa andare al guinzaglio anche se tira un po’.', 'NO', 'SI', 'Pablo potrebbe essere adatto anche ad una famiglia alla prima esperienza con i cani, la cosa importante è che ci sia la voglia di dedicargli il tempo che merita. Essendo molto bravo ed equilibrato potrebbe essere adatto anche a famiglie con dei bambini, la cosa importante è che siano ben educati nel rispetto dei cani e che non siano troppo piccoli, in quanto essendo molto giocherellone potrebbe inavvertitamente saltare addosso facendoli cadere o spaventandoli; per la stessa ragione lo sconsigliamo a persone troppo anziane. Potrebbe essere affidato anche in una famiglia dove sia presente un altro cane facendo prima la prova di compatibilità caratteriale. Bene l’affido sia in appartamento che casa con giardino, a patto che viva in casa a contatto con la famiglia e che gli vengano garantite le passeggiate giornaliere.', 4),
(4, 'Urania', 'Femmina', '2013-01-01', 2, '2017-08-30', 'Ceduta da proprietari', 'E\' una cagnolona fantastica, socievole con le persone, abituata a vivere anche a contatto con i bambini, molto socievole con i cani. Nel contesto dove viveva prima non era abituata ad andare a guinzaglio, ma nonostante questo non ha problemi. Molto attenta al suo conduttore, è il tipo di cane che lega molto con il suo proprietario. E’ un cane molto equilibrato.', 'SI', 'SI', 'Anche se non è abituata a vivere in appartamento penso che si possa tranquillamente adattare basta darle un pochino di tempo. Possibile l’affido con persone che sono alla prima esperienza con i cani. Possibile l’affido in famiglia dove siano presenti bambini o altri cani.', 1),
(5, 'Carlo', 'Maschio', '2013-07-01', 13, '2017-07-17', 'Ceduto', 'E’ un cane molto equilibrato ma che ha fatto poche esperienze, è un po’ agitato e ha bisogno un po’ di lavoro per stare più tranquillo. Con gli altri cani ha una buona comunicazione, con i gatti non si sa ancora bene in quando si vede che non li conosce ed è incuriosito, bisogna vedere con il tempo. Ama molto giocare con la palla, elemento che lo aiuta a gestire un po’ i momenti di frustrazione, anche se è importante che la pallina per lui rimanga una sorta di sfogo e non una mania.', 'SI', 'SI', 'E’ un cane che ha bisogno di fare parecchio movimento è quindi consigliato a persone attive che abbiano voglia di coinvolgerlo in attività e in lunghe passeggiate. Non è un cane da tenere in giardino. Possibile l’affido con altri cani facendo prima la prova di compatibilità caratteriale.', 3),
(6, 'Achille', 'Maschio', '2008-07-10', 4, '2017-06-30', 'Ceduto da proprietari anziani', 'Cagnolino anziano, ha qualche problema di equilibrio e ogni tanto trascina le zampette posteriori, si stanca molto facilmente. I proprietari quando ce l’hanno ceduto hanno detto che non andava d’accordo con altri cani, noi sinceramente abbiamo provato a farlo incontrare con diversi cani nostri ospiti e sia al guinzaglio che da libero è stato molto bravo, ha un’ottima comunicazione e non abbiamo riscontrato nessun tipo di problema. A Guinzaglio è molto bravo, non tira ed è molto attento al suo conduttore, si spaventa solo se ci sono rumori troppo forti, ma si riprende subito. Sembra non essere nemmeno predatorio con i gatti.', 'NO', 'SI', 'Achille è un cane equilibrato, potrebbe andare bene anche per una prima esperienza preferibilmente senza bambini, avendo qualche problema sul posteriore e sentendo dolore, potrebbe reagire se manipolato in modo sbagliato. Non andrebbe bene anche per persone molto attive che vorrebbero portarsi il cane a fare lunghe passeggiate, si stancherebbe subito e andrebbe in stress.', 3),
(7, 'Paride', 'Maschio', '2013-02-01', 14, '2017-02-14', 'Accalappiato a Catania', 'Socievole con le persone, sembra bravo anche con gli altri cani. Non interessato ai gatti.  Cane sicuro di se. Bravissimo al guinzaglio, non tira ed è abbastanza attento al suo conduttore.', 'SI', 'SI', 'Prima di scegliere un cane solo perchè di razza è bene anche conoscere le caratteristiche specifiche di quella razza; accenno che il pastore maremmano è un cane da guardia delle greggi, territoriale e con un carattere ben deciso e sicuro.  Appartamento o casa con giardino, meglio persone con esperienza o che conoscano la razza o che siano disposti a seguire i nostri consigli sulla gestione. Possibile l’affido anche in presenza di un altro cane facendo prima la prova di compatibilità caratteriale.', 2),
(8, 'Terno', 'Maschio', '2016-11-01', 5, '2017-09-04', 'Accalappiato', 'Terno è un cane molto bravo e tranquillo, sembra essere ben educato, anche se essendo stato accalappiato non sappiamo nulla di lui prima del suo arrivo in canile. In passeggiata è bravo e curioso, anche se non sa ancora gestire i momenti di staticità durante la passeggiata. Socievole con gli altri cani. Come è tipico dei cani giovani come lui è molto giocherellone. Nei confronti dei gatti ha molta curiosità, ma al tempo stesso tende a puntarli.', 'NO', 'SI', 'Benissimo l’affido in una famiglia che abbia tempo da dedicargli, sia per farlo divertire sia per fargli conoscere sempre di più il mondo, è un cane giovane e ha bisogno di fare ancora molte esperienze. Possibile l’affido in famiglia dove ci sia un altro cane facendo prima la prova di compatibilità caratteriale. Meglio no famiglie con gatti. Bene sia in appartamento che casa con giardino garantendogli però una vita a contatto con la famiglia e garantendogli anche le dovute passeggiate giornaliere.', 1),
(9, 'Iolao', 'Maschio', '2007-04-01', 12, '2017-04-20', 'Accalappiato insieme a Hercules', 'Arrivato da noi in canile, un po’ spaventato nei confronti delle persone e dell’ambiente, probabilmente a causa delle poche esperienza fatte fino ad ora,  ha fatto davvero tantissimi miglioramenti, è un gran patatone. Lui insieme ad il compagno Hercules sono un po’ delle adozioni del cuore, anziani, con probabilmente una vita triste alle spalle, fisicamente non sono bellissimi per cui spesso le persone passano oltre senza far troppo caso a loro e dando più attenzione a cani fisicamente più accattivanti… speriamo in qualcuno che vada oltre all’estetica! In passeggiata fa un po’ fatica, cammina poco e lentamente un po’ per timidezza e un po’ perchè è in difficoltà fisicamente (ha un corpo lungo e le gambette corte).', 'SI', 'SI', 'Iolao è adatto ad una famiglia che abbia voglia di “conquistarselo” facendogli capire pian piano che non ha nulla d’aver paura. Non persone troppo dinamiche in quanto lui in passeggiata si stanca subito. Possibile l’affido con altri cani facendo prima la prova di compatibilità caratteriale. Bene anche per persone anziane.', 5),
(10, 'Hercules', 'Maschio', '2017-04-01', 12, '2017-04-20', 'Accalappiato insieme a Iolao', 'Nella sua vita probabilmente ha fatto poche esperienze, rispetto al compagno Iolao, con il quale ha sempre vissuto fin prima del suo arrivo in canile, è più sicuro di se, spesso è anche un po’ geloso e vorrebbe tutte le attenzioni per lui. Sia Lui che Iolao sono un po’ delle adozioni del cuore, entrambi non sono giovani, hanno il corpo lungo e le zampe corte, spesso la gente quando li vede dice che sono buffi e prosegue cercando cani più belli, ma per fortuna “non è bello ciò che è bello, ma è bello ciò che piace” e speriamo per loro in qualcuno che vada oltre all’aspetto estetico.  Forse un po’ per l’età e un po’ per la sua conformazione fisica non può fare delle lunghe passeggiate se no si stanca molto e fa fatica. Non è ancora abituato alla pettorina, non se la fa mettere volentieri, però essendo un cane che al guinzaglio non tira si può tranquillamente gestire con il collare.', 'SI', 'SI', 'Meglio persone che abbiano già esperienza con i cani. Non è adatto a persone che scelgono il cane per fare lunghe passeggiate con lui, Hercoles purtroppo si stanca abbastanza in fretta di camminare. Possibile l’affido sia in appartamento che casa con giardino, sapendo però che è bene che viva in casa in quanto soprattutto nel periodo freddo non gli farebbe bene vivere fuori. L’affido con altri cani sarebbe un po’ da valutare a seconda della situazione e a seconda del cane con cui dovrebbe vivere, a Iolao è abituato, hanno vissuto insieme da sempre, però essendo geloso a volte se vuole prendere le coccole dalle persone tende ad allontanare gli altri cani.', 4);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `cani_adottabili`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `cani_adottabili` (
`id_cane` int(5) unsigned
,`nomeC` varchar(10)
,`sesso` varchar(7)
,`nascita` date
,`razzaN` int(2) unsigned
,`in_canile_da` date
,`provenienza` varchar(50)
,`carattere` text
,`sterilizzato` varchar(2)
,`microchippato` varchar(2)
,`adozione_ideale` text
,`volontarioEm` varchar(30)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `cittadino`
--

CREATE TABLE `cittadino` (
  `cod_fiscale` varchar(16) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `num telefono` varchar(10) NOT NULL,
  `residenza` varchar(40) NOT NULL,
  `indirizzo` varchar(35) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cittadino`
--

INSERT INTO `cittadino` (`cod_fiscale`, `nome`, `cognome`, `num telefono`, `residenza`, `indirizzo`, `email`) VALUES
('FRNSCV81C31K039G', 'Francesca', 'Scarvagliari', '3819128830', 'Adrano (CT)', 'Contrada Chiuse, 80', 'franc.scarv@gmail.com'),
('LCTDNF95C12C931P', 'Daniele', 'Leocata', '3289012213', 'Catania', 'Via Luna, 83', 'daniele@gmail.com'),
('MRTPRR89D21C654L', 'Piero', 'Martucci', '3819210012', 'Biancavilla (CT)', 'Via Appiano Gentile, 3', 'pieromart@hotmail.com'),
('SCRVNC92C12C359H', 'Vincenzo', 'Scarlata', '381721990', 'Catania', 'Via San Nicolo ,23', 'scarlatavinc@gmail.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `diagnosi`
--

CREATE TABLE `diagnosi` (
  `id_visita` int(3) UNSIGNED NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `diagnosi`
--

INSERT INTO `diagnosi` (`id_visita`, `descrizione`) VALUES
(7, 'Visita di routine per Achille. Continua a mantenersi in salute. Vengono somministrate vitamine.'),
(8, 'Controllo di routine, presentava leggere irritazioni cutanee ma non mostra forme di irritazioni gravi. '),
(9, 'Da due giorni presentava disturbi alimentari, probabilmente ha ingerito qualche lucertola. Vengono prescritte vitamine per due giorni, da controllare le feci. Inoltre viene microchippato.'),
(14, 'Il cane non manifesta più segni di disturbi. Viene ripresa la regolare alimentazione.'),
(10, 'Viene fatto un richiamo dei vaccini AD23, AC993. '),
(11, 'Viene somministrato antipulci. Il richiamo sarà fatto tra 30-35 gg.'),
(12, 'Il cane continuava a grattarsi in continuazione. Sono state rimosse n.2 zecche. Sembra tuttavia non dimostrare altri disturbi.'),
(13, 'Richiamo di vaccini A93, B29.');

-- --------------------------------------------------------

--
-- Struttura della tabella `donazione`
--

CREATE TABLE `donazione` (
  `id_donazione` int(8) UNSIGNED NOT NULL,
  `codFiscale_cittadino` varchar(16) NOT NULL,
  `descrizione` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `donazione`
--

INSERT INTO `donazione` (`id_donazione`, `codFiscale_cittadino`, `descrizione`, `data`) VALUES
(1, 'LCTDNF95C12C931P', 'Quattro sacchi di croccantini \"Vita Day\" da 20kg cadauno.', '2017-08-08'),
(2, 'MRTPRR89D21C654L', 'n. 20 guinzagli misti, 5 scatole di biscotti', '2017-09-05'),
(3, 'SCRVNC92C12C359H', 'N. 100 fialette di antipulci e antiparassitari per cani \"Advantix\" per taglia media, piccola e grande.', '2017-07-12');

-- --------------------------------------------------------

--
-- Struttura della tabella `razza`
--

CREATE TABLE `razza` (
  `id_razza` int(2) UNSIGNED NOT NULL,
  `nome_razza` varchar(25) NOT NULL,
  `impiego` varchar(45) NOT NULL,
  `longevita` varchar(10) NOT NULL,
  `taglia` varchar(15) NOT NULL,
  `altezza` varchar(10) NOT NULL,
  `peso` varchar(10) NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `razza`
--

INSERT INTO `razza` (`id_razza`, `nome_razza`, `impiego`, `longevita`, `taglia`, `altezza`, `peso`, `descrizione`) VALUES
(1, 'Bulldog', 'Cane da compagnia', '13 anni', 'Media', '37-42 cm', '21-27 kg', 'Cane compatto e tarchiato, dal caratteristico aspetto e dall\'indole pacifica, il Bulldog inglese e\' il cane Nazionale della Gran Bretagna.Nonostante sia stato selezionato per la lotta, il Bulldog ha un indole pacifica e tollerante. Tende pero\' ad essere dominante nei rapporti tra maschi, diventando talvolta aggressivo.'),
(2, 'Pastore Tedesco', 'Cane da pastore,da servizio', '10-12 anni', 'Grande', '60-65 cm', '22-40kg', 'Il cane da pastore tedesco e\' un cane buono, intelligente e vigile. Utilizzato anche come cane da guida, e\' affidabile e mansueto e raramente diventa aggressivo se provocato.Il cane da pastore tedesco e\' un cane calmo, equilibrato ed intelligente. Di indole buona e poco aggressiva, se addestrato può diventare anche combattivo ed essere un ottimo cane da guardia. Dolce con i bambini, predilige ambienti familiari.'),
(3, 'Labrador retriever', 'Recupero in acqua', '10-12 anni', 'Medio-grande', '54-62cm', '25-36kg', 'I Labrador amano mangiare, e cercheranno di mangiare qualsiasi cosa che sembra cibo, quindi, imparate da subito a metter via tutto ciò che può sembrare appetibile al cane, compresi giocattoli, oggetti personali e biancheria. E\' gentile, estroverso e docile, desideroso di piacere, e tende a non essere aggressivi verso persone o altri animali.'),
(4, 'Jack Russell Terrier', 'Cane da caccia in tana, cane da compagnia', '13 anni', 'Piccola', '25-30 cm ', '5-7 kg', 'Piccolo Terrier creato dal Reverendo Jhon Russel per la caccia alla tana, cane piccolo ma coraggioso, vitale, allegro.Cane vitale, attivo ed allegro. Con animali di specie diverse il rapporto potrebbe risultare problematico, anche se il contatto e\' fin da cucciolo, a causa del suo forte istinto predatorio. Si affeziona a tutta la famiglia ma il rapporto piu\' intenso si avrà solo con il capobranco, verso il quale tendera\' ad essere possessivo e protettivo.'),
(5, 'Beagle', 'Segugio, cane da compagnia', '12 anni', 'Medio-piccola', '33-41cm', '9-11kg', 'Cane dall\'antica origine, veniva impiegato per la caccia alla piccola selvaggina impiegandolo in mute molto numerose.Il Beagle presenta un carattere vivace e socievole, non e\' aggressivo e ben si adatta a vivere in gruppo.'),
(6, 'Dalmata', 'Cane da compagnia, famiglia, addestramento', '11 anni', 'Medio-grande', '54-61cm', '24-32kg', 'Il Dalmata, cane dalle antichissime origini, e\' il \"cane da carrozza\" per eccellenza. Dotato di notevole resistenza poteva scortare nei lunghi viaggi le carrozze senza stancarsi.Il Dalmata e\' un cane molto intelligente, di indole pacifica ama la compagnia e il contatto con le persone. Importante e\' far socializzare il cane con altri simili fin dalla tenera eta\'.'),
(7, 'Volpino italiano', 'Cane da guardia e da compagnia', '14-15 anni', 'Piccolo', '25-30 cm', '3-4', 'Il Volpino italiano e\' un cane di taglia piccola elegante e vivace, ideale come guardiano della casa ma anche come compagno di giochi dei piu\' piccoli. Il cane ha un carattere fiero e indipendente, seppur sia molto dolce con il proprio padrone.Il Volpino e\' un cane molto vivace, allegro e giocherellone. Sempre coraggioso e impavido, e\' diffidente verso gli estranei ma sa essere dolce ed affettuoso con la sua famiglia.'),
(8, 'Yorkshire Terrier', 'Cane da compagnia', '12-15 anni', 'Piccolo', '20-25 cm', '1-3 kg', 'Lo Yorkshire Terrier e\' un cane allegro e vivace, perfetto anche come cane da compagnia per i più piccoli. Mai aggressivo e dal carattere equilibrato, e\' un ottimo compagno di giochi e sa anche essere dolce e affettuoso con gli altri animali.Lo Yorkshire Terrier è un cane vivace, allegro e molto sveglio. Intelligente ed infaticabile, riesce a portare allegria in ogni famiglia ed e\' un grande amante dei bambini. Raramente aggressivo o nervoso, sa comunque difendere le persone che ama.'),
(9, 'Maltese', 'Cane da compagnia', '12 anni', 'Piccolo', '20-25 cm', '3-4 kg', 'Il Maltese e\' un cane dalle antichissime origini, di cui nulla si sa di certo, tranne che sia originato nel bacino del Mediterraneo in cui ebbe ampia diffusione, cosi\' come tutti i cani del gruppo Bichon.Il Maltese e\' un cane vivace ed intelligente, si affeziona in particolar modo con chi ha scelto come capobranco ma lega con tutti i componenti della famiglia.'),
(10, 'Boxer', 'Cane da compagnia e da lavoro', '9 anni', 'Grande', '53-63 cm', '23 - 32 kg', 'Con il suo muso caratteristico il Boxer, selezionato alla fine dell\'800 come cane da guerra, e\' una tra le razze più affettuose, giocose e facilmente addestrabile.Il Boxer ideale è sicuro di se, calmo ed equilibrato. Tende ad attaccarsi molto alla sua famiglia ma è diffidente verso gli estranei.\r\nIl suo carattere lo rende un cane facilmente addestrabile e puo\' essere impiegato in molte attivita\' lavorative come cane da difesa, cane poliziotto, cane da ricerca e cane guida per non vedenti.'),
(11, 'Alano', 'Compagnia, guardia e protezione', '8 anni', 'Gigante', '72 - 90 cm', '55 - 80 kg', 'Il cane Alano e\' considerato l\'apollo dei cani. Protettivo, affettuoso ed equilibrato, ama la compagnia ma puo\' essere riservato nei confronti degli estranei. Ama i bambini ma puo\' diventare troppo espansivo nel gioco.Non è territoriale ma presenta comunque uno spiccato senso di protezione della propria famiglia che lo rende un ottimo cane da guardia. Data la mole imponente necessita di addestramento fin da giovane. Il carattere ideale e\' adatto alla vita in famiglia, sicuro di se\' ma recettivo ai comandi, privo di aggressivita\' ma non timido o timoroso.'),
(12, 'Meticcio', 'variabile', '10-15', 'Media', 'variabile', 'variabile', 'Cane meticcio è un termine con cui si indica normalmente un cane frutto di un incrocio di razze canine diverse oppure di altri meticci. Detti anche \"cani fantasia\", rappresentano una tipologia di cani molto eterogenea, ma da considerarsi nel complesso la più diffusa.'),
(13, 'Border Collie', 'Cane da pastore, da compagnia', '13 anni', 'Medio-Piccola', '47-53 cm', '12-20kg', 'Il Border Collie è un cane di taglia media agile e scattante, particolarmente vivace e molto intelligente. Perfetto come cane da compagnia, è spesso scelto per le discipline dell’agility.Il carattere del Border Collie è piacevole. Sereno e molto affettuoso, è un cane intelligente e sveglio, giocherellone soprattutto con i più piccoli. Raramente aggressivo, ama il clima sereno e tranquillo.'),
(14, 'Pastore maremmano', 'Cane da pastore e da guardia', '10-12 anni', 'Grande', '60-73 cm', '30-45 kg', 'Il cane da pastore maremmano è un cane elegante, dal portamento regale e dalla incredibile resistenza. Dotato di eccellente muscolatura, è un ottimo cane da guardia e da compagnia.Il pastore maremmano è un cane utilizzato come cane da guardia e da difesa, per la sua grande abilità nell’eseguire gli ordini e per la sua intelligenza. È un cane diffidente verso gli estranei, fiero e molto vigile e difficile da sottomettere. Tuttavia, con il padrone instaura un rapporto di affetto e devozione molto particolare.');

-- --------------------------------------------------------

--
-- Struttura della tabella `segnalazioni`
--

CREATE TABLE `segnalazioni` (
  `segnalazione_id` int(11) UNSIGNED NOT NULL,
  `nome_segnalatore` varchar(255) NOT NULL,
  `cognome_segnalatore` varchar(35) NOT NULL,
  `email_segnalatore` varchar(255) NOT NULL,
  `segnalatore_tel` varchar(10) NOT NULL,
  `oggetto_segnalazione` varchar(50) NOT NULL,
  `testo_segnalazione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `segnalazioni`
--

INSERT INTO `segnalazioni` (`segnalazione_id`, `nome_segnalatore`, `cognome_segnalatore`, `email_segnalatore`, `segnalatore_tel`, `oggetto_segnalazione`, `testo_segnalazione`) VALUES
(1, 'Danilo', 'Leocata', 'danilo.l@live.it', '3891283380', 'Maltrattamento', 'Salve, ho visto un maltrattamento in via etnea ');

-- --------------------------------------------------------

--
-- Struttura della tabella `veterinario`
--

CREATE TABLE `veterinario` (
  `id_veterinario` int(4) UNSIGNED NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `residenza` varchar(40) NOT NULL,
  `indirizzo` varchar(35) NOT NULL,
  `numero_telefono` varchar(10) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `veterinario`
--

INSERT INTO `veterinario` (`id_veterinario`, `nome`, `cognome`, `residenza`, `indirizzo`, `numero_telefono`, `email`) VALUES
(1, 'Giovanni', 'Marino', 'Catania', 'Piazza Genova n.8', '0961239912', 'vetgionni@gmail.com'),
(2, 'Elia', 'Leanza', 'Giardini Naxos (ME)', 'Via gabriele d\'annunzio 19', '3912813310', 'vetelialeanza@outlook.com'),
(3, 'Luca', 'Nicolosi', 'Agira (EN)', 'Via bronte n.8', '0972133491', 'vet.nicolosi_luca@hotmail.com'),
(4, 'Vincenzo', 'Caruso', 'Catania', 'Cortile cicerone n.8', '3812091148', 'vincenzo-caruso-vet@hotmail.com'),
(5, 'Dario', 'Russo', 'Catania', 'Via Fulci 13', '3891238810', 'russo-d@gmail.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `visita`
--

CREATE TABLE `visita` (
  `id_visita` int(3) UNSIGNED NOT NULL,
  `id_cane` int(5) UNSIGNED NOT NULL,
  `id_veterinario` int(4) UNSIGNED NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `visita`
--

INSERT INTO `visita` (`id_visita`, `id_cane`, `id_veterinario`, `data`) VALUES
(7, 6, 5, '2017-09-24'),
(8, 5, 2, '2017-09-13'),
(9, 1, 2, '2017-09-24'),
(10, 10, 1, '2017-08-29'),
(11, 3, 3, '2017-09-12'),
(12, 2, 4, '2017-07-31'),
(13, 4, 1, '2017-09-18'),
(14, 1, 3, '2017-09-25');

-- --------------------------------------------------------

--
-- Struttura della tabella `volontario`
--

CREATE TABLE `volontario` (
  `id_volontario` int(6) UNSIGNED NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `data_nascita` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `residenza` varchar(40) NOT NULL,
  `indirizzo` varchar(30) NOT NULL,
  `numero_telefono` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `volontario`
--

INSERT INTO `volontario` (`id_volontario`, `nome`, `cognome`, `data_nascita`, `email`, `residenza`, `indirizzo`, `numero_telefono`) VALUES
(1, 'Angelo', 'Nicolosi', '1996-04-04', 'angelo.n@live.it', '', 'Via Garibaldi, 32 (CT)', '3718918219'),
(2, 'Giovanna', 'Lipari', '1975-12-10', 'giovanna.lip@gmail.com', '', 'Via Etnea 219 (CT)', '3819201127'),
(3, 'Francesco', 'Alberio', '1990-01-22', 'ciccio.alberio@live.it', '', 'Via Luna 83 (CT)', '3819103938'),
(4, 'Nicolo\'', 'Santangelo', '1997-02-14', 'nic.sant@hotmail.it', '', 'Via Inzerilli n.18', '3810029121'),
(5, 'Domenico', 'Lucifora', '1992-09-30', 'mimmo_luc@gmail.com', '', 'Via del Segreto 33', '3812931123'),
(6, 'Giulia', 'D\'amico', '1988-06-26', 'giulietta_d@gmail.com', '', 'Contrada pecoraro n.3', '3819203881'),
(7, 'Alfio', 'Zappacosta', '1979-02-20', 'alfio_zappacosta@hotmail.it', '', 'Via Etna n. 561', '3819029912');

-- --------------------------------------------------------

--
-- Struttura per la vista `cani_adottabili`
--
DROP TABLE IF EXISTS `cani_adottabili`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cani_adottabili`  AS  select `cane`.`id_cane` AS `id_cane`,`cane`.`nome` AS `nomeC`,`cane`.`sesso` AS `sesso`,`cane`.`nascita` AS `nascita`,`razza`.`id_razza` AS `razzaN`,`cane`.`in_canile_da` AS `in_canile_da`,`cane`.`provenienza` AS `provenienza`,`cane`.`carattere` AS `carattere`,`cane`.`sterilizzato` AS `sterilizzato`,`cane`.`microchippato` AS `microchippato`,`cane`.`adozione_ideale` AS `adozione_ideale`,`volontario`.`email` AS `volontarioEm` from ((`cane` join `razza`) join `volontario`) where ((`cane`.`razza` = `razza`.`id_razza`) and (`cane`.`id_responsabile` = `volontario`.`id_volontario`)) ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `adozione`
--
ALTER TABLE `adozione`
  ADD PRIMARY KEY (`id_adozione`),
  ADD KEY `adozione_ibfk_1` (`codFiscale_cittadino`),
  ADD KEY `adozione_ibfk_2` (`id_cane`);

--
-- Indici per le tabelle `cane`
--
ALTER TABLE `cane`
  ADD PRIMARY KEY (`id_cane`),
  ADD KEY `cane_ibfk_1` (`razza`),
  ADD KEY `id_responsabile` (`id_responsabile`);

--
-- Indici per le tabelle `cittadino`
--
ALTER TABLE `cittadino`
  ADD PRIMARY KEY (`cod_fiscale`);

--
-- Indici per le tabelle `diagnosi`
--
ALTER TABLE `diagnosi`
  ADD KEY `diagnosi_ibfk_1` (`id_visita`);

--
-- Indici per le tabelle `donazione`
--
ALTER TABLE `donazione`
  ADD PRIMARY KEY (`id_donazione`),
  ADD KEY `donazione_ibfk_1` (`codFiscale_cittadino`);

--
-- Indici per le tabelle `razza`
--
ALTER TABLE `razza`
  ADD PRIMARY KEY (`id_razza`);

--
-- Indici per le tabelle `segnalazioni`
--
ALTER TABLE `segnalazioni`
  ADD PRIMARY KEY (`segnalazione_id`);

--
-- Indici per le tabelle `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- Indici per le tabelle `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id_visita`),
  ADD KEY `visita_ibfk_1` (`id_cane`),
  ADD KEY `visita_ibfk_2` (`id_veterinario`);

--
-- Indici per le tabelle `volontario`
--
ALTER TABLE `volontario`
  ADD PRIMARY KEY (`id_volontario`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `adozione`
--
ALTER TABLE `adozione`
  MODIFY `id_adozione` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `cane`
--
ALTER TABLE `cane`
  MODIFY `id_cane` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `donazione`
--
ALTER TABLE `donazione`
  MODIFY `id_donazione` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `razza`
--
ALTER TABLE `razza`
  MODIFY `id_razza` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT per la tabella `segnalazioni`
--
ALTER TABLE `segnalazioni`
  MODIFY `segnalazione_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id_veterinario` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `visita`
--
ALTER TABLE `visita`
  MODIFY `id_visita` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT per la tabella `volontario`
--
ALTER TABLE `volontario`
  MODIFY `id_volontario` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `adozione`
--
ALTER TABLE `adozione`
  ADD CONSTRAINT `adozione_ibfk_1` FOREIGN KEY (`codFiscale_cittadino`) REFERENCES `cittadino` (`cod_fiscale`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `adozione_ibfk_2` FOREIGN KEY (`id_cane`) REFERENCES `cane` (`id_cane`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `cane`
--
ALTER TABLE `cane`
  ADD CONSTRAINT `cane_ibfk_1` FOREIGN KEY (`razza`) REFERENCES `razza` (`id_razza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cane_ibfk_2` FOREIGN KEY (`id_responsabile`) REFERENCES `volontario` (`id_volontario`);

--
-- Limiti per la tabella `diagnosi`
--
ALTER TABLE `diagnosi`
  ADD CONSTRAINT `diagnosi_ibfk_1` FOREIGN KEY (`id_visita`) REFERENCES `visita` (`id_visita`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `donazione`
--
ALTER TABLE `donazione`
  ADD CONSTRAINT `donazione_ibfk_1` FOREIGN KEY (`codFiscale_cittadino`) REFERENCES `cittadino` (`cod_fiscale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`id_cane`) REFERENCES `cane` (`id_cane`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinario` (`id_veterinario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
