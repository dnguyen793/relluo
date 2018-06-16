$(document).ready(initializeApp);
var matchedUserUsername;

function initializeApp(){
    showMatchedUsers();
    $('.arrow-left, .arrow-left > i').on('click', showSelectionPage);
    $('.arrow-right, .arrow-right > i').on('click', showSelectionPage);
    $('.selection').on('click', showSelectionPage);


    $('.all').on('click', showAllUsers);
    $('.to-users, .to-users > i').on('click', showAllUsers);

    $('.matched').on('click', showMatchedUsers);
    $('.back-to-match, .back-to-match > i').on('click', showMatchedUsers);

}

function showMatchedUsers(){
    $(".all-users, .selectionDiv").removeClass('show').addClass('hidden');
    $(".matched-users").removeClass('hidden').addClass('show');
    $(".all, .selection").css({"background-color": "rgba(180, 213, 218, 0.5)", "color": "white"});
    $(".matched").css({"background-color": "rgb(82, 145, 155)", "color": "rgb(242, 197, 118)"});
    $(".matched-users-cotainer").empty();
    matchedUsersCheck();
}

function showSelectionPage(){
    $('.matched-users, .all-users').removeClass('show').addClass('hidden');
    $(".selectionDiv").removeClass('hidden').addClass('show');
    $(".matched, .all").css({"background-color": "rgba(180, 213, 218, 0.5)", "color": "white"});
    $(".selection").css({"background-color": "rgb(82, 145, 155)", "color": "rgb(242, 197, 118)"});
    getUsersYouSelected();
    getUsersWhoSelectedYou();
}

function showAllUsers(){
    $('.matched-users, .selectionDiv').addClass('hidden').removeClass('show');
    $(".all-users").removeClass('hidden').addClass('show');
    $(".matched, .selection").css({"background-color": "rgba(180, 213, 218, 0.5)", "color": "white"});
    $(".all").css({"background-color": "rgb(82, 145, 155)", "color": "rgb(242, 197, 118)"});
    getData();
}


function matchedUsersCheck(){
    $.ajax({
        type: 'POST',
        url: serverBase+'/matched',
        dataType: 'json',
        jsonpCallback: 'callback',
        crossDomain: true,
        cache: false,
        success: function(data){
            if(data.data[0]){
                getMatchedUsername(data);
                getMatchedUserGoals(data);

            } else {
                checkForInterestedMatches();
            }
        },
        error: function(xhr, status, err){
            console.log(err)
        }
    })
}

function getMatchedUsername(data){
    let matchedUser = data.data[0].matched_user_id;
    let userId = data.data[0].user_id;
    $.ajax({
        type: 'POST',
        url: serverBase+'/getMatchedUsername',
        dataType: 'json',
        jsonpCallback: 'callback',
        crossDomain: true,
        cache: false,
        data: {
            matchedUser: matchedUser,
            userId: userId,
            
        },
        success: function(data){
            if(data.data[0]){
                console.log(data.data);
                matchedUserUsername = data.data[0].username;
                console.log('matchedUserUsername', matchedUserUsername);
            } else {
                var p = $("<p>").text("No goals for today").addClass('center');
                $(".match-list").append(p);
            }
        },
        error: function(xhr, status, err){
            console.log(err)
        }
    })
}

function getMatchedUserGoals(data){
    var d = new Date();
    var n = d.getDay();
    var day = n;

    let matchedUser = data.data[0].matched_user_id;
    let userId = data.data[0].user_id;
    $.ajax({
        type: 'POST',
        url: serverBase+'/matchedgoals',
        dataType: 'json',
        jsonpCallback: 'callback',
        crossDomain: true,
        cache: false,
        data: {
            matchedUser: matchedUser,
            userId: userId,
            day: day,
        },
        success: function(data){
            if(data.data[0]){
                $('.all-goals-list').empty();
                renderMatchedUserGoalOnDashboard(data.data);
            } else {
                var p = $("<p>").text("No goals for today").addClass('center no-goals');
                $(".matched-users-cotainer").append(p);
            }
        },
        error: function(xhr, status, err){
            console.log(err)
        }
    })
}

function checkForInterestedMatches(){
    $.ajax({
        type: 'POST',
        url: serverBase+'/interestedMatching',
        dataType: 'json',
        jsonpCallback: 'callback',
        crossDomain: true,
        cache: false,
        data: {
        },
        success: function(resp){
            if(resp.data[0] !== undefined){
                $('.all-goals-list').empty();
                console.log(resp.data);
                debugger;
                renderAllUsers(resp.data)
            } else {
                // getData();
                // var p = $("<p>").text("No users ready to match").addClass("center");
                // $(".match-list").append(p);
            }


        },
        error: function(xhr, status, err){
            console.log(err)
        }
    })
}


function getData(category){
    $.ajax({
        type: 'POST',
        url: serverBase+'/matching',
        dataType: 'json',
        jsonpCallback: 'callback',
        crossDomain: true,
        cache: false,
        data: {
            category: category,
        },
        success: function(resp){
            console.log("This is the possible matches====="+resp)
            var possibleMatches = resp.data;
            if(resp.data[0] !== undefined){
                // console.log(resp);
                $('.all-goals-list').empty();
                console.log(resp.data);
                renderAllUsers(resp.data)
                var users = resp.data;
            } else {
                var p = $("<p>").text("No users ready to match").addClass("center no-users");
                $(".no-users-container").append(p);
            }


        },
        error: function(xhr, status, err){
            console.log(err)
        }
    })
}

function renderMatchedUserGoalOnDashboard(goals){
    console.log('matched user goals',goals);
    var users = [];
    for(var i=0; i<goals.length;i++){
        users.push(goals[i]);
        //Gets goal description
        var goalDescription = goals[i].goal;
        let goalId = goals[i].goal_id;
        let userId =goals[i].user_id;
        //Creates goal container for each goal
        var goalContainer = $('<div>').addClass('goal-container-goals goal').attr('id','goalId'+goalId);

        //Creates a container with the goal description
        var goalBar = $("<div>").addClass('goal-description partner-goal-description z-depth-3');

        let username = $("<div>", {
            text: matchedUserUsername + ":",
            "class": "usernameDiv"
        });

        let usericon = $("<i>", {
            "class": "material-icons usericon",
            text: "account_circle"
        });

        username.prepend(usericon);
        
        let actualGoal = $("<div>", {
            text: goalDescription,
            "class": "actualGoalDiv"
        });

        goalBar.append(username, actualGoal);


        //Creates drop down menu to mark goal as edit or delete
        // var dropDownMenuButtonContainer = $('<div>').addClass('button-container z-depth-3');

        // var editButton = $('<button>').addClass('dropdown-button dropdown-trigger goal-button material-icons').attr('data-activates', 'dropdown'+goalId).text('menu');

        // var dropDownList = $('<ul>').addClass('dropdown-content').attr('id','dropdown'+goalId);

        let goalSelector = '#goalId'+goalId;


        // var editItem = $('<li>').addClass('edit center-align').on('click', ()=>{

        //         console.log(userId);
        //         sendInterestedMatches(userId);
        //     }
        // ).wrapInner('<a href="#">Select</a>');

        // var deleteItem = $('<li>').addClass('delete center').on('click', ()=>{
        //     getMatches(userId);
        // }).wrapInner('<a>Find Match</a>');


        goalContainer.append(goalBar);

        $('.matched-users-cotainer').append( goalContainer);
        $('.dropdown-trigger').dropdown();
    }
}


function renderAllUsers(goals){
    console.log('goals',goals);
    $('.matched-users-cotainer').empty();
    $('.user-names').empty();

    let instruction = $("<p>", {
        "class": "instruction",
        text: "You can select any of the user to be your goal-tracking buddy"
    });
    $('.user-names').append(instruction);
    if($(".matched-users-container").length <= 0){
        for(var i=0; i<goals.length;i++){
            //Gets goal description
            let goalDescription = goals[i].username;
            let goalId = goals[i].id;
            let userId =goals[i].user_id;
            //Creates goal container for each goal
            var goalContainer = $('<div>').addClass('goal-container goal').attr('id','goalId'+userId,'username','username'+goalDescription);

            //Creates a container with the goal description
            var goalBar = $("<div>").addClass('goal-description z-depth-1');
            var userProfile = $("<div>").addClass('profileImg');
            var img = $("<img>").attr("src", "../images/default-user.png");
            userProfile.append(img);
            var user = $("<p>").addClass('user-name truncate').text(goalDescription);
            goalBar.append(userProfile, user);

            //Creates drop down menu to mark goal as edit or delete
            var dropDownMenuButtonContainer = $('<div>').addClass('button-container z-depth-2');

            var editButton = $('<button>').addClass('dropdown-button dropdown-trigger goal-button material-icons').attr('data-activates', 'dropdown'+userId).text('menu');

            var dropDownList = $('<ul>').addClass('dropdown-content').attr('id','dropdown'+userId,'username','dropdown'+goalDescription);

            let goalSelector = '#goalId'+goalId;


            var editItem = $('<li>').addClass('edit center-align').on('click', ()=>{
                console.log(goalId);
                sendInterestedMatches(userId,goalDescription);
                }
            ).wrapInner('<a href="#">Select</a>');

            var deleteItem = $('<li>').addClass('delete center').on('click', ()=>{
                getMatches(userId);
                console.log(userId);
                // deleteGoal(goalId);
                // $(goalSelector).remove();
            }).wrapInner('<a>Find Match</a>');

            dropDownList.append(editItem, deleteItem);


            dropDownMenuButtonContainer.append(editButton,dropDownList);

            goalContainer.append(goalBar, dropDownMenuButtonContainer);

            if(goals.length < 10){
                $('.matched-users-cotainer').append(goalContainer);
            } else {
                $('.user-names').append(goalContainer);
            }
            

            // $('.match-list').append(goalContainer);
            // $('.edit').wrapInner('<a href="#">edit</a>')
            $('.dropdown-trigger').dropdown();

        }

    }

}
function sendInterestedMatches(matchedUserId,username) {
    $.ajax({
        type: "POST",
        url: serverBase+"/matchingusers",
        // dataType: "json",
        data: {
            username: username,
            matchedUserId: matchedUserId,
        },
        success: function (json_data) {
            var data = json_data;
            console.log('matched users', data);
        }

    })
}

// get the users id of the user and their selected user to send to the match table
// function getMatches(matchedUserId) {
//     debugger;
    
//     console.log(matchedUserId);
//     $.ajax({
//         type: "POST",
//         url: serverBase+"/matchingpairs",
//         // dataType: "json",
//         data: {
//             matchedUserId: matchedUserId,
//         },
//         success: function (json_data) {
//             var data = json_data;
//             console.log(data);
//             if(data.data[0]){
//                 console.log(data);
//                 sendMatchToTable(data);
//             }
//             // sendMatchToTable(data);
//         }

//     })
// }

function sendMatchToTable(thisUserId, interested_user_id ) {

    let thisuser = thisUserId;
    let interested_user = interested_user_id;
    console.log(thisuser, interested_user);
    $.ajax({
        type: "POST",
        url: serverBase+"/matchedusers",
        data: {
            user_id: thisuser,
            matched_user_id: interested_user,
        },
        success: function (json_data) {
            var data = json_data;
            console.log(data);
            if(data.success){
            updateUsers(thisuser, interested_user);
            deleteMatchInterest(thisuser, interested_user)
            }
            else{
                console.log("Error matching");
            }
        },
        error: function(resp){
            console.log('matching resp', resp);
        }

    })
}

//DELETE ROW FR INTERESTED TABLE AFTER YOU AND YOUR BUDDY MATCHED  
function deleteMatchInterest(userId, interested_user_id) {
    $.ajax({
        type: "POST",
        url: serverBase+"/interest/delete",
        data: {
            user_id: interested_user_id,
            matched_user_id: userId,
        },
        success: function (json_data) {
            var data = json_data;
            console.log(data);

        }

    })
}


function updateUsers(userId, interested_user_id) {
    $.ajax({
        type: "POST",
        url: serverBase+"/users/update",
        data: {
            user_id: userId,
            matched_user_id: interested_user_id,
        },
        success: function (json_data) {
            var data = json_data;
            console.log(data);
            $(location).attr('href', '/matching_system.html')

        }

    })
}




function getUsersYouSelected(){
    $.ajax({
        type: "GET",
        url: "/selected",
        success: function(resp){
            
            if( !resp.data.length ){
                $('.selected-users').empty();
                let message = $("<div>", {
                    class: "message z-depth-1",
                    text: "No goal-tracking buddy Select one under All User"
                });

                $('.selected-users').append(message);
            }
            else{
                renderYourSelectedUsers(resp.data);
            }
        },
        error: function(resp){
            console.log("Error getting selected user");
        }
    });
}

function renderYourSelectedUsers(usersData){
    console.log('usersData', usersData)
    $('.selected-users').empty();


    for(var i=0; i<usersData.length;i++){

        //Creates goal container for each goal
        var userContainer = $('<div>', {
            "class": "user-container"
        })

        //Creates a container with the goal description
        var userBar = $("<div>").addClass('user-description z-depth-1');
        var userProfile = $("<div>").addClass('profileImg');
        var img = $("<img>").attr("src", "../images/default-user.png");
        userProfile.append(img);
        var user = $("<p>").addClass('user-name truncate').text(usersData[i].username);
        userBar.append(userProfile, user);
        userContainer.append(userBar);

        $(".selected-users").append(userContainer);
    }
}


function getUsersWhoSelectedYou(){
    $.ajax({
        type: "GET",
        url: "/selectedyou",
        success: function(resp){
            console.log("selected you resp", resp);
            
            if( !resp.data.length ){
                $('.selected-you').empty();
                let message = $("<div>", {
                    class: "message z-depth-1",
                    text: "You haven't get selected Select one under All User"
                });

                $('.selected-you').append(message);
            }
            else{
                renderUsersThatSelectedYou(resp.data);
            }
        },
        error: function(resp){
            console.log("Error getting selected user");
        }
    });
}

function renderUsersThatSelectedYou(usersData){
    console.log('usersData', usersData)
    $('.selected-you').empty();

    for(var i=0; i<usersData.length;i++){
        var thisUser = usersData[i].interested_user_id;
        var selectedUser = usersData[i].user_id;

        var userContainer = $('<div>').addClass('user-container').attr('id','goalId'+usersData[i].user_id,'username','username'+usersData[i].username);

        var userBar = $("<div>").addClass('user-description z-depth-1');
        var userProfile = $("<div>").addClass('profileImg');
        var img = $("<img>").attr("src", "../images/default-user.png");
        userProfile.append(img);
        var user = $("<p>").addClass('user-name truncate').text(usersData[i].username);
        userBar.append(userProfile, user);
        // userContainer.append(userBar);


        //Creates drop down menu to mark goal as edit or delete
        var dropDownMenuButtonContainer = $('<div>').addClass('button-container z-depth-2');

        var editButton = $('<button>').addClass('dropdown-button dropdown-trigger goal-button material-icons').attr('data-activates', 'dropdown'+usersData[i].user_id).text('menu');

        var dropDownList = $('<ul>').addClass('dropdown-content').attr('id','dropdown'+usersData[i].user_id,'username', 'dropdown'+usersData[i].username);

        var editItem = $('<li>').addClass('edit center-align').on('click', ()=>{
            sendMatchToTable(thisUser, selectedUser )
            }
        ).wrapInner('<a>Select</a>');


        dropDownList.append(editItem);


        dropDownMenuButtonContainer.append(editButton,dropDownList);

        userContainer.append(userBar, dropDownMenuButtonContainer);
        $(".selected-you").append(userContainer);
        $('.dropdown-trigger').dropdown();

    }
}