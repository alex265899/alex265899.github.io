/**
 * Created by Alexander Chapman on 5/27/2016.
 */
var username = 'alex265899';
var password = 'brent16';
//var loginAtempts = 0;
function loginForm(){
    var  usernameInput = document.forms['Login']['userInput'].value;
    var passwordInput = document.forms['Login']['passInput'].value;

    if ((usernameInput == username) && (passwordInput == password)){
        window.alert("Correct login. Welcome!");
        return true;
    } else {
        window.alert("Login unsuccessful. Incorrect username or password!")
        return false;
    }

}