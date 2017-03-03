$(document).ready(function() {


});

function connectToFacebook(){
  FB.Event.subscribe('auth.authResponseChange', auth_response_change_callback);
  FB.Event.subscribe('auth.statusChange', auth_status_change_callback);
}


var auth_response_change_callback = function(response) {
  console.log("auth_response_change_callback");
  console.log(response);
}

var auth_status_change_callback = function(response) {
  FB.getLoginStatus(function(response) {
      if (response.status === 'connected'){
        // send them to their user profile
        console.log("you're connected, bitch")
        var uid = response.authResponse.userID;
        var accessToken = response.authResponse.accessToken;
        console.log(accessToken)
      } else if (response.status === 'not_authorized') {
        // send the thing to get permission to use their fb
        console.log("here")
      } else {
        console.log("there")
      }
  });
  console.log("auth_status_change_callback: " + response.status);
}
