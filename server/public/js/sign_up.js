$(document).ready(initializeApp);

// var userID = require('../app');

var userEmail = null;
var userName = null;
var userPwd = null;
var invalidEmail = true;



function initializeApp() {
    userEmail = getEmailInput();
    userName = getUsernameInput();
    userPwd = getPasswordInput();
    $('.signUpBtn').on('click', handleSignUpBtnClick);
}

function getEmailInput() {
    var email = '';
    var emailInput = $("#email");
    var parent = $('.emailMsg');
    var child = $('.emailMsg span');
    const emailValidification = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    $('.emailInput').on('keyup', function (event) {
        email = event.target.value;

        // console.log('email1:', email);

        if( !emailValidification.test(email) ){

            var text = 'Please enter a valid email address';

            messageForInvalidInput( emailInput, parent, child, text );

            invalidEmail = true;
        }
        else{
            invalidEmail = false;

            // var parent = $('.emailMsg');
            // var child = $('.emailMsg span');
            var text = 'Valid email address';

            messageForValidInput( emailInput, parent, child, text );
        }
    });

    $('.emailInput').on('focusout', function () {
        if( !emailValidification.test(email) ){

            var text = 'Please enter a valid email address';

            messageForInvalidInput( emailInput, parent, child, text );

            invalidEmail = true;
        }
        return userEmail = email;
    });

}

function getUsernameInput() {
    var username = '';
    var usrnameInput = $("#username");
    var parent = $('.usernameMsg');
    var child = $('.usernameMsg span');

    $('.usernameInput').on('keyup', function (event) {
        username = event.target.value;

        if( username.length < 8 ){


            var text = 'Username must contain at least 8 characters';

            messageForInvalidInput( usrnameInput, parent, child , text);
        }
        else{
            // var parent = $('.usernameMsg');
            // var child = $('.usernameMsg span');
            var text = 'Valid username';

            messageForValidInput( usrnameInput, parent, child , text);
        }
    });

    $('.usernameInput').on('focusout', function () {
        if( username.length < 8 ){


            var text = 'Username must contain at least 8 characters';

            messageForInvalidInput( usrnameInput, parent, child , text);
        }
        return userName = username;

    });
}

function getPasswordInput() {
    var pwd = '';
    var pwdInput = $("#password");
    var parent = $('.pwdMsg');
    var child = $('.pwdMsg span');

    $('.pwdInput').on('keyup', function (event) {
        pwd = event.target.value;

        if( pwd.length < 8 ){

            var text = 'Password must contains at least 8 characters';

            messageForInvalidInput( pwdInput, parent, child, text );
        }
        else{
            var text = 'Valid password';

            messageForValidInput( pwdInput, parent, child, text );
        }
    });

    $('.pwdInput').on('focusout', function () {
        if( pwd.length < 8 ){

            var text = 'Password must contains at least 8 characters';

            messageForInvalidInput( pwdInput, parent, child, text );
        }
        return userPwd = pwd;
    });
}

function messageForInvalidInput( inputfield, parentElement, childElement, text ) {
    parentElement.removeClass('validInput').addClass('invalidInput');
    inputfield.removeClass('validInput').addClass('invalidInput');
    var icon = $("<i>", {
        "class": "material-icons tiny valign-wrapper",
        text: "error_outline"
    });
    childElement.text( text );
    childElement.append(icon);
}

function messageForValidInput( inputfield, parentElement, childElement, text) {
    parentElement.removeClass('invalidInput').addClass('validInput');
    inputfield.removeClass('invalidInput').addClass('validInput');

    var icon = $("<i>", {
        "class": "material-icons tiny valign-wrapper",
        text: "check"
    });
    childElement.text( text );
    childElement.append(icon);
}

function createObject( email, username, password ) {
    var object = {};
    object.email = email;
    object.username = username;
    object.password = password;
    sendData(email, username, password);
    return object;
}

function sendData(email, username, password) {
    $.ajax({
        type: "POST",
        url: serverBase+"/users",
        // dataType: "json",
        data: {
            email: email,
            username: username,
            password: password
        },
        success: function (json_data) {
            var data = json_data;
            if (json_data.success) {
                clearUserInput();

                $('#buttonText').text('SUCCESS');
                setTimeout(()=>{(window.location.replace('/login'))}, 1000);
            }
            else{
                $('.message span').text("Error creating account!").addClass('invalidInput');
                setInterval( () => {
                    $('.message span').text('');
                }, 3500);
            }
        },
        error: function(message){

        }

    })
}


function handleSignUpBtnClick() {

    if( userEmail === undefined || userName === undefined || userPwd === undefined || userName.length < 8 || userPwd.length < 8 || invalidEmail ){
        $('.message span').text("Please correct the error/errors above and try again").addClass('invalidInput');
        setInterval( () => {
            $('.message span').text('');
        }, 3500);
        return;
    }
    else {
        var newObject = createObject( userEmail , userName, userPwd);
        $('.message span').text('');
        $('.signUpForm').addClass('animated bounceOut');


    }

}

function clearUserInput() {
    var icon = $("<i>", {
        "class": "material-icons tiny valign-wrapper",
        text: "error_outline"
    });
    $('.emailInput').val('');
    $('.emailMsg span').text('Please enter a valid email address').addClass('defaultColor').append(icon);
    $('.usernameInput').val('');
    $('.usernameMsg span').text('Username must contain at least 8 characters').addClass('defaultColor').append(icon);
    $('.pwdInput').val('');
    $('.pwdMsg span').text('Password must contains at least 8 characters').addClass('defaultColor').append(icon);

    invalidEmail = true;
}
