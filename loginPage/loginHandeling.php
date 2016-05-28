<?php
    $username = 'alex265899';
    $password = 'brent16';
    
    $userInput = htmlspecialchars($_POST['userInput']);
    $passInput = htmlspecialchars($_POST['passInput']);
    
    $nextPage = "<script>window.location('https://inventory-website-alex265899.c9users.io/mainPage/mainPage.html')</script>";
    $previousPage = "<script>window.location('https://inventory-website-alex265899.c9users.io/loginPage/loginPage.html')</script>";
    
    if (($username == $userInput) && ($password == $passInput)){
        print 'Login successful. Welcome! ';
        print 'Redirecting...';
        echo $nextPage;
    } else {
        print 'Login unsuccessful. Incorrect username or password';
        
        echo $previousPage;
    }
    
?>