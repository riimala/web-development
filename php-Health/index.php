<!DOCTYPE HTML>
<HTML>

<HEAD>
    <meta http-equiv="refresh" content="10" />
    <LINK href="masterMoto.css" rel="stylesheet" type="text/css">
</HEAD>

<body>
    <?php
    include "connariPudotus.php";

    $pArvot = array();
    $merkki = "'";
    $sql = "SELECT * FROM Pudotus ORDER BY id DESC LIMIT 14";
    $result = $con->query($sql);
    $numRecs = mysqli_num_rows($result);

    if (mysqli_num_rows($result) == 0) {
        print 'No results';
    } else {
        print "<h2>Jounin Terveys Seuranta</h2>";

        print "<table id = 'motoTable'>";
            print "<tr>";
                print "<th>PVM</th>";
                print "<th>Paino</th>";
                print "<th>Reisi</th>";
                print "<th>Vyötärö</th>";
                print "<th>Rinta</th>";
                print "<th>Yläpaine</th>";
                print "<th>Alapaine</th>";
                print "<th>Pulssi</th>";
                print "<th>Peff</th>";
                print "<th style='width:200px'>Tulos</th>";
        print "</tr>";
        print "</table>";


        $dateArray = [];
        $currentHours = Date('H') + 1;

        $p = array();
        $painoArr = array();
        $vyotaroArr = array();

        //Paino ym mittojen käsittelyä
        while ($db_field = mysqli_fetch_assoc($result)) {
            $pvm = $db_field['pvm'];
            $paino = $db_field['paino'];
            $reisi = $db_field['reisi'];
            $rinta = $db_field['rinta'];
            $vyotaro = $db_field['vyotaro'];
            $peff = $db_field['peff'];
            $ylaP = $db_field['ylaPaine'];
            $alaP = $db_field['alaPaine'];
            $pulssi = $db_field['pulssi'];
            $tulos = $db_field['tulos'];
            $tulosWrapped = wordwrap($tulos, 200, "<br />\n");

            if ($paino > 80 || $paino == 0) {
                $painoRes = "<td style=background-color:red>" . $db_field['paino'];
            } else {
                $painoRes = "<td style=background-color:green>" . $db_field['paino'];
            }

            if ($reisi > 60 || $reisi == 0) {
                $reisiRes = "<td style=background-color:red>" . $db_field['reisi'];
            } else {
                $reisiRes = "<td style=background-color:green>" . $db_field['reisi'];
            }

            if ($rinta > 105 || $rinta == 0) {
                $rintaRes = "<td style=background-color:red>" . $db_field['rinta'];
            } else {
                $rintaRes = "<td style=background-color:green>" . $db_field['rinta'];
            }


            if ($vyotaro > 95  || $vyotaro == 0) {
                $vyotaroRes = "<td style=background-color:red>" . $db_field['vyotaro'];
            } else {
                $vyotaroRes = "<td style=background-color:green>" . $db_field['vyotaro'];
            }

            if ($ylaP > 139   || $ylaP == 0) {
                $ylaPaineRes = "<td style=background-color:red>" . $db_field['ylaPaine'];
            } else {
                $ylaPaineRes = "<td style=background-color:green>" . $db_field['ylaPaine'];
            }

            if ($alaP > 79   || $alaP == 0) {
                $alaPaineRes = "<td style=background-color:red>" . $db_field['alaPaine'];
            } else {
                $alaPaineRes = "<td style=background-color:green>" . $db_field['alaPaine'];
            }

            if ($pulssi > 51 || $pulssi == 0) {
                $pulssiRes = "<td style=background-color:red>" . $db_field['pulssi'];
            } else {
                $pulssiRes = "<td style=background-color:green>" . $db_field['pulssi'];
            }

            if ($peff < 610  || $peff == 0) {
                $peffRes = "<td style=background-color:red>" . $db_field['peff'];
            } else {
                $peffRes = "<td style=background-color:green>" . $db_field['peff'];
            }

            print "<table id = 'mototable'";
            print "<tr><td>" . $db_field['pvm'] . "</td>" . $painoRes . "</td>" . $reisiRes . "</td>" . $vyotaroRes .  "</td>" . $rintaRes . "</td>" . $ylaPaineRes . "</td>" . $alaPaineRes . "</td>" . $pulssiRes . "</td>" . $peffRes . "</td><td style='width:200px'>" . $tulosWrapped . "</td></tr>";

            print "</table>";
        }
    }

    $con->close();
    ?>

</body>

</HTML>