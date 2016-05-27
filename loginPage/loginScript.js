/**
 * Created by Alexander Chapman on 5/27/2016.
 */
var username = 'alex265899';
var password = 'brent16';
//var loginAtempts = 0;
function loginForm(){
    var  usernameInput = document.forms['Login']['userInput'].value;
    var passwordInput = document.forms['Login']['passInput'].value;

    if ((usernameInput == username) || (passwordInput == password)){
        alert("Correct login. Welcome!");
        return true;
    } else {
        alert("Login unsuccessful. You're username or password is incorrect!");
        return false;
    }

}