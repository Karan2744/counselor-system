
<?php
session_start();
error_reporting(0);
include('../connection.php');

if (strlen($_SESSION['admin_panel_login']) == 0) {
    header('location:logout.php');
} else {
    if (isset($_POST['submit'])) {
        $questionsData = array(); // Initialize array to store questions data
        
        $cid = $_GET['cid'];
        $ccid = $_GET['ccid'];
        $sid = $_GET['sid'];
        $n = $_GET['n'];
        $eid = $_GET['eid'];
        $ch = $_GET['ch'];
        
        for ($i = 1; $i <= $n; $i++) {
            $question = array(
                'qid' => uniqid(),
                'question' => addslashes($_POST['qns' . $i]),
                'options' => array(
                    'a' => addslashes($_POST[$i . '1']),
                    'b' => addslashes($_POST[$i . '2']),
                    'c' => addslashes($_POST[$i . '3']),
                    'd' => addslashes($_POST[$i . '4'])
                ),
                'correct_answer' => $_POST['ans' . $i]
            );
            
            // Push each question data to the questions array
            $questionsData[] = $question;
        }
        
        // Encode the questions array to JSON format
        $jsonData = json_encode($questionsData, JSON_PRETTY_PRINT);
        
        // Write JSON data to a file
        $jsonFilePath = 'questions.json';
        file_put_contents($jsonFilePath, $jsonData);
        
        header("location:dashboard.php");
        $_SESSION['msg'] = "Test Added !!";
    }
}

?>
