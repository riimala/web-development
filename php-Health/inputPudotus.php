<html>

<HEAD>
    <!--<LINK href="../masterInput2.css" rel="stylesheet" type="text/css">-->
<style>
.container {
  width: 400px;
  clear: both;
}

label, textarea, input {
  display: inline-block;
  width: 140px;
  text-align: left;
}​

.el02 { /* Text and background colour, blue on light gray */
color:#00f;
background-color:#ddd;
font-weight:bold;
}

/*
.container {
  width: 50%;
  clear: both;
}
*/
</style>

<script>
// When the user clicks on <div>, open the popup
var showNoteText = 0;


function showNote() {    
    if (showNoteText === 1)
    {
        alert("Tarkista kentät.");
    }
}
</script>
</HEAD>

<body>

    <?php
//include '../sshtunnel/enable_ssh.php';
//define variables and set to empty values
$ErrorErr = '';
$name = $story = '';

$ip = $_SERVER['REMOTE_ADDR'];

$alkupaino = 89.5;
 //http://smart-ip.net/geoip-json

//server stuff
/*
$details = json_decode(file_get_contents("http://ipinfo.io/{$ip}/json"));
$detsu = json_encode($details, true);
$id = $details->id;
$url = $details->url;
*/

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['submit'])) {
        include 'connariPudotus.php';

        $pvm = getdate();
        $paino = $_POST['paino'];
        $reisi = $_POST['reisi'];
        $vyotaro = $_POST['vyotaro'];
        $rinta = $_POST['rinta'];
        $ylaPaine = $_POST['ylaPaine'];
        $alaPaine = $_POST['alaPaine'];
        $pulssi = $_POST['pulssi'];
        $tulos = $_POST['lisatietoja'];

        $painonKehitys = $alkupaino - $paino;

        echo "Error: " . $sql . "<br>" . mysqli_error($con);

        $query = "INSERT INTO Pudotus(paino, reisi, vyotaro, rinta, ylaPaine, alaPaine, pulssi, tulos) VALUES ('$paino', '$reisi', '$vyotaro', '$rinta','$ylaPaine','$alaPaine','$pulssi', 'Painoa tippunut $painonKehitys kg. $tulos')";
        //$date = date('Y-m-d H:i:s'); //not in use
        
        //echo 'query: '.$query.'<br>';
        $result = mysqli_query($con, $query) or die('inserting values failed '.mysqli_error($con));

        if ($result)
        {
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
//$con->close();
?>

    <!--Label { display: inline-block; width: 100px; text-align: right; }-->

    <body>
        <pre>

        </pre>
        <center>
            
            <fieldset style="width:350px">
            <div class = "el02">
                <legend>
                <?php $d = date('m-d-Y');?>
                    <h3>Painon ja muiden mittojen syöttö, <?php echo $d;?></h3>
                </legend>

                <!--indexTrain.php-->
            
                <form class="form-style-7" method="post">
                
                <!--<form class="form-style-7" method="post">-->
                    <ul>    
                           
                           <!--
                            <p>
                            <label for="pvm">Pvm</label>
                            <input type="date" name="pvm" min="2020-08-25" max="2020-12-31" value="<?php echo $d;?>">
                            -->
                    
                            <p>

                            <label for="paino">Paino</label>
                            <input type="number" step = "0.1" name="paino" value = 84>
                            <p>

                            <label for="reisi">Reisi</label>
                            <input type="number" step = "0.1" name="reisi" value = 0>
                        
                            <p>
                            <label for="vyotaro">Vyotaro</label>
                            <input type="number" step = "0.1" name="vyotaro" value = 0>

                            <p>
                            <label for="rinta">Rinta</label>
                            <input type="number" step = "0.1" name="rinta" value = 0>
                            
                            <p>
                            <label for="ylaPaine">Yläpaine</label>
                            <input type="number" step = "1" name="ylaPaine" value = 0>
                            
                            <p>
                            <label for="alaPaine">Alapaine</label>
                            <input type="number" step = "1" name="alaPaine" value = 0>

                            <p>
                            <label for="pulssi">Pulssi</label>
                            <input type="number" step = "1" name="pulssi" value = 0>

                            <p>
                            <label for="lisatietoja">Muuta</label>
                            <textarea cols=20 rows=5 name="lisatietoja"></textarea>

                        <p>
                        <input type="submit" name="submit" value="Send">
                    
            </fieldset>
            </div>
            </ul>
            </form>
        </center>
    </body>
</html>