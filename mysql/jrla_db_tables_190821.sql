-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 07:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jrla`
--

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `ID` int(11) NOT NULL,
  `Tapahtuma` varchar(100) CHARACTER SET latin1 NOT NULL,
  `KM` int(11) NOT NULL DEFAULT 0,
  `PVM` date NOT NULL DEFAULT current_timestamp(),
  `Selite` varchar(300) CHARACTER SET latin1 NOT NULL,
  `Kertyma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`ID`, `Tapahtuma`, `KM`, `PVM`, `Selite`, `Kertyma`) VALUES
(4, 'Ajokauden aloitus', 14026, '2021-03-26', ' Katsottu tallissa 26.3.2021', 0),
(11, 'Solo reissu', 14085, '2021-04-01', ' Tapahtui 30.3.2021 ja vähän vilpoista oli. Paippisten Shellillä tuli käytyä.', 59),
(13, 'Pusula keikka', 14417, '2021-04-19', ' Loistava keli ja hyvä kinkkupiirakka ja tuli ostettua vielä Ratto olutkin.', 391),
(21, 'Nurmijärvi keikka', 14462, '2021-04-21', ' Hieman vilposempaa joskin tuli kokeiltua avokypärää interphonella. Radio toimi aivan hyvin.', 436),
(28, 'Porvoo keikka 18.4.2021 (sunnuntai)', 14462, '2021-04-22', ' Kilsat sisältyy jo olemassa oleviin kertymiin. Eka pehmis tuli vedettyä ja hyvin oli porukkaa liikenteessä. Taisi olla myös eka box - reissu (ei baari boxia kuitenkaan).', 436),
(29, 'Box ajo', 14522, '2021-04-30', ' Solo ajo ja kylmää oli.', 496),
(30, 'Mäntsälä reisu', 14618, '2021-05-09', ' Piipahdus Jari B:n luonna vanhaa nelostietä pitkin.', 592),
(31, 'Haltia - Iversby', 14797, '2021-05-12', ' Timpan kanssa Porvoon lähellä oleville mutkateille.', 771),
(32, 'Tammisaari ajelu', 15063, '2021-05-14', ' Timpan kanssa hyvä reissu ja lämmintä oli + 200 kilsaa tuli vedettyä ja kivaa oli.', 1037),
(33, 'Suntsby - Hinthaara', 15190, '2021-05-16', ' Oma reissu joskin aivan yes.', 1164),
(34, 'Keulaöljyn vuoto', 15376, '2021-05-17', ' Huomattu 16.9', 1350),
(35, 'Pyörän kaatuminen (paikallaan)', 14797, '2021-05-17', ' Pyörä kaatui oikealle kyljelleen Lahelan ABC:n kylmätankkauspihalla. Oikeasta jarrukahvasta lähti palanen ja pari kosmeettista minor ongelmaa joskin vain peiliin ja takajarrupolkimesta lähti vähän maalia. Vakuutus ei korvannut, koska liian suppea. Nyt laajennettu L-tasolle.', 771),
(46, 'Box - Hinthaara ajelu', 15600, '2021-05-25', 'Kuiva ja aurinkoinen päivä, kohtuu ripeä keikka.', 1574),
(47, '16 000 km huolto + kahvojen vaihto + jarrupolkimen kosmetisointi.', 15605, '2021-05-26', 'Mike\'s Corneriin 26.6.2021 ja nouto varmaan 31.5.2021.', 1579),
(48, '16 000 km motohuolto + keulastefat öljyineen.', 15606, '2021-06-02', 'Mike\'s Corner firma teki huollon ja veloitti 452 euroa. Kahvat hoidetaan myöhemmin.', 1580),
(49, 'Pusula keikka 5.6 ja aikaisemmilla päivillä muita ajoja.', 16162, '2021-06-06', 'Metsästäjänkeitto päivän lounaana.', 2136),
(50, 'Porkkalanniemi ajelu', 16490, '2021-06-07', 'Hyvä keli ja tienpinta oli lähes virheetön. Kivennäisvesi pullalla oli menyyna.', 2464),
(51, 'Mommilan kyläpuoti visiitti', 16648, '2021-06-08', 'Kesän retro merkkarit haettu. Poliiseja näytti olevan kohtuulisesti liikenteessä.', 2622),
(52, 'Visiitti Badding-kioskilla.', 17033, '2021-06-14', 'Karkkila-Somero-Räyskälä-Nurmijärvi-Tuusula akselilla Timon kansa. Porras nimisessä paikassa kahvit. Tänään Mike\'s Corner putiikissa asennettiin uudet ledi valot.', 3007),
(53, 'Pulkkilanharju visit', 17292, '2021-06-16', 'Takaisin tullessa visiitti ace cafe lahdessa jossa tuli vedettyä coke ja the black ace hamppari joka oli tykkihyvä ranskalaisineen.', 3266),
(54, 'Porvoo-Mäntsälä-Kärkölä-Sukeva-Hyvinkää-Tuusula.', 17552, '2021-06-17', 'Timpan kanssa ajeltiin, kävimme myös moikkaamassa Jaria.', 3526),
(55, 'Pellinki - retki Timpan kanssa.', 17905, '2021-06-20', 'Kuuma kuin fan oli. Hyvät sapuskat palatessa Porvoon satamassa eli täytetty rieska.', 3879),
(56, 'Fiskars - Tammisaari - Timpan rallitie..', 18292, '2021-06-22', 'Lopputulos: Siisti reissu joskin kuuma oli ja perse on kipeä.', 4266);

-- --------------------------------------------------------

--
-- Table structure for table `pudotus`
--

CREATE TABLE `pudotus` (
  `id` int(11) NOT NULL,
  `pvm` date NOT NULL DEFAULT current_timestamp(),
  `paino` double NOT NULL DEFAULT current_timestamp(),
  `reisi` double NOT NULL,
  `vyotaro` double NOT NULL,
  `peff` int(11) NOT NULL,
  `rinta` double NOT NULL,
  `ylaPaine` int(11) NOT NULL,
  `alaPaine` int(11) NOT NULL,
  `pulssi` int(11) NOT NULL,
  `tulos` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pudotus`
--

INSERT INTO `pudotus` (`id`, `pvm`, `paino`, `reisi`, `vyotaro`, `peff`, `rinta`, `ylaPaine`, `alaPaine`, `pulssi`, `tulos`) VALUES
(183, '2021-08-18', 89.6, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `taskitaulu`
--

CREATE TABLE `taskitaulu` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Taski` varchar(800) CHARACTER SET utf8 DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `done` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskitaulu`
--

INSERT INTO `taskitaulu` (`ID`, `Taski`, `date_created`, `done`) VALUES
(3, 'Tervolan metsänhoitoyhdistyksen edustajan (Jami Nygård) kanssa tehty sopimus \npuukaupan tarjouspyynnöstä ja puukaupan hoitamisesta. \n\nPaasiahon kauppa mahdollisesti vasta vuoden 2022 talvella (tarjouspyynnön vahvistus Jamille 09/21). Oinaanahon harvennushakkuu hoidetaan Tervolan Sahan toimesta 2021 kesällä. Tarkoitus myös, että Mhy valvoo harvennushakkuiden toteutuksen. Odotettu kauppahinta n. 10 keuroa, joka tulee maksuun hakkuiden jälkeen.\n\nSovittu hinta per kuutio 80 senttiä. Esim 500 kuutiota * 0.8 on 400 euroa (metsävähennykset).  \n\nYhteystiedot:\nJAMI NYGÅRD Metsäneuvoja, \nTervola 040-485 1518 \njami.nygard@mhy.fi', '2021-09-01', 'Tehty'),
(25, 'Ulkovesihana (keittiö) vaihdettu LVI Takkisen Raunon toimesta. Työaika 30 min ja lasku tulee (arviolta n. 150 maximissaan).', '2021-04-17', 'Tehty'),
(27, 'Aidan, leikkimökin ja autotallin maalaus (lapset + minä). Pitää hakea iso maalipönttö..', '2021-07-03', 'Ei tehty'),
(38, 'Ongelmajätteiden vienti, kuntoilu, risukuorma ?', '2021-05-04', 'Tehty'),
(39, 'Tervolan kiinteistöstä laitettu myynti-ilmoitus Toriin. Ensimmäinen kandidaatti Jyrki Ylitalo soitti kauppaan liittyen ja oli kiinnostunut. Käy katsomassa tonttia 7-9.5.21 välisenä aikana. kiinteistörekisteriotte, lainhuutotodistUS ja rasitetodistus tilattu tänään 4.5.21. Mikäli kaupat tulee ajankohtaiseksi teetä kauppakirja kiinteistövälitystoimistossa. Varmista vielä talon suojelupäätöksen purku ja hanki purkulupa. \n\nTontti ei sopinukaan Ylitalolle joten tontin kohtalo ei ole vielä selvä.', '2021-05-09', 'Ei tehty'),
(40, 'Inkkareiden saunailta Häkällä ke-to (12-13.5) välisenä yönä.', '2021-05-13', 'Ei tehty'),
(41, 'Kiihdytä suojelupäätöksen purkua, soittamalla Sauli Jalasmäelle. Soitettu Jalasmäelle 6.5.2021 ja käsitelty asia. Tarkoitus hoitaa suojelupäätöksen purku jota hän lupautui edistämään. Lähetit sähköpostin 6.5.2021 tarvittavine liitetiedostoineen, lupasi indikoida prosessista. Laita Tori ilmoitukseen kommentti kun asia käynistyy.', '2021-05-09', 'Tehty'),
(43, 'Koronarokote 14.5.2021 klo 08:45 (tarkista kellonaika)', '2021-05-14', 'Ei tehty'),
(44, 'Parturi', '2021-05-07', 'Ei tehty'),
(45, 'Bugi, kun luo uuden recordin niin tulee lista tekemättömistä taskeista... Koodi refractoroitu käyttämällä private esittelyitä ja luomalla julkinen instassi + muuttuja (t ja conn2).', '2021-05-07', 'Tehty'),
(47, 'Betonikynnys autotalliin. Kodin Terrasta betonia ja liuskan tekoon.', '2021-05-11', 'Ei tehty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pudotus`
--
ALTER TABLE `pudotus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskitaulu`
--
ALTER TABLE `taskitaulu`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pudotus`
--
ALTER TABLE `pudotus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `taskitaulu`
--
ALTER TABLE `taskitaulu`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
