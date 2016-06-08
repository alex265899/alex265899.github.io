<?php
    $username = 'alex265899';
    $password = 'brent16';
    
    $userInput = htmlspecialchars($_POST['userInput']);
    $passInput = htmlspecialchars($_POST['passInput']);
    
    
    if (($username == $userInput) && ($password == $passInput)){
        echo "<script type='text/javascript'>window.location = 'https://inventory-website-alex265899.c9users.io/mainPage/mainPage.html'</script>";
    } else {
        echo "";
    }
    
?>