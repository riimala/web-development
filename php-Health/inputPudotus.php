<html>

<HEAD>
    <meta charset="UTF-8">
    <LINK href="css/health.css" rel="stylesheet" type="text/css">
    
    <!--<style>
        .input {
            display: block;
            margin-left: 5cm;
            width: 10px;
        }

        .form-style {
            text-align: left;
            display: inline-block;
        }

        .el02 {
            /* Text and background colour, blue on light gray */
            color: #00f;
            background-color: #ddd;
            font-weight: bold;
        }

        .center {
            text-align: left;
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .fieldset {
            margin-left: 2px;
            margin-right: 2px;
            padding-top: 0.35em;
            padding-bottom: 0.625em;
            padding-left: 0.75em;
            padding-right: 0.75em;
            border: 2px groove (internal value);
            background-color: bisque;
        }
    </style>-->

    <script>
        // When the user clicks on <div>, open the popup
        var showNoteText = 0;

        function showNote() {
            if (showNoteText === 1) {
                alert("Tarkista kentät.");
            }
        }
    </script>
</HEAD>

<body>

    <?php
    $ErrorErr = '';
    $name = $story = '';

    $ip = $_SERVER['REMOTE_ADDR'];

    $alkupaino = 89.5;
    //http://smart-ip.net/geoip-json

    /*server stuff
    $details = json_decode(file_get_contents("http://ipinfo.io/{$ip}/json"));
    $detsu = json_encode($details, true);
    $id = $details->id;
    $url = $details->url;
    echo "id: $id and url: $url";
    */

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        if (isset($_POST['submit'])) {
            include 'connariPudotus.php';

            $pvm = getdate();
            $paino = $_POST['paino'];
            $reisi = $_POST['reisi'];
            $vyotaro = $_POST['vyotaro'];
            $peff = $_POST['peff'];
            $rinta = $_POST['rinta'];
            $ylaPaine = $_POST['ylaPaine'];
            $alaPaine = $_POST['alaPaine'];
            $pulssi = $_POST['pulssi'];
            $tulos = $_POST['lisatietoja'];

            $painonKehitys = $alkupaino - $paino;

            echo "Error: " . $sql . "<br>" . mysqli_error($con);

            $query = "INSERT INTO Pudotus(paino, reisi, vyotaro, peff, rinta, ylaPaine, alaPaine, pulssi, tulos) VALUES ('$paino', '$reisi', '$vyotaro', '$peff', '$rinta','$ylaPaine','$alaPaine','$pulssi', 'Painoa tippunut $painonKehitys kg. $tulos')";
            $result = mysqli_query($con, $query) or die('inserting values failed ' . mysqli_error($con));

            if ($result) {
    ?>
                <script>
                    window.location.href = "index.php";
                </script>
    <?php
            }
        }
    }

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);

        return $data;
    }
    ?>

    <body>
        <pre>

        </pre>

        <div class="center">
            <div>
                <fieldset>

                    <legend>
                        <?php $d = date('m-d-Y'); ?>
                    </legend>

                    <form class="form-style" method="post">

                    <h3>Syötä Arvot, <?php echo $d; ?></h3>

                        <p>

                            <label for="paino">Paino</label>
                            <input type="number" step="0.1" name="paino" value=84>
                        <p>

                            <label for="reisi">Reisi</label>
                            <input type="number" step="0.1" name="reisi" value=0>

                        <p>
                            <label for="vyotaro">Vyotaro</label>
                            <input type="number" step="0.1" name="vyotaro" value=0>

                        <p>
                            <label for="peff">Peff</label>
                            <input type="number" step="0.1" name="peff" value=0>

                        <p>
                            <label for="rinta">Rinta</label>
                            <input type="number" step="0.1" name="rinta" value=0>

                        <p>
                            <label for="ylaPaine">Yläpaine</label>
                            <input type="number" step="1" name="ylaPaine" value=0>

                        <p>
                            <label for="alaPaine">Alapaine</label>
                            <input type="number" step="1" name="alaPaine" value=0>

                        <p>
                            <label for="pulssi">Pulssi</label>
                            <input type="number" step="1" name="pulssi" value=0>

                        <p>
                            <label for="lisatietoja">Muuta</label>
                            <textarea cols=20 rows=5 name="lisatietoja"></textarea>
                        <p>
                            <input type="submit" name="submit" value="Send">
                    </form>

                </fieldset>
            </div>
       </div>
    </body>

</html>