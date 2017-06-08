/*
var session;

var endButton = document.getElementById('endCall');
endButton.addEventListener("click", function () {
       session.bye();
       alert("Call Ended");
}, false);

var startButton = document.getElementById('startCall');
startButton.addEventListener("click", function () {
       session = ua.invite('sip:jbrevik1@hsmove.onsip.com', options);
       alert("Call Started");
}, false);

var ua = new SIP.UA('jbrevik@hsmove.onsip.com');

var userAgent = new SIP.UA({
       uri: '1000@10.0.0.191',
       wsServers: ['wss://10.0.0.191:7443'],
       authorizationUser: '1000',
       password: '1234',
       iceCheckingTimeout: ['500']

});

var options = {
       media: {
               constraints: {
                       audio: true,
                       video: true
               },
               render: {
                       remote: document.getElementById('remoteVideo'),
                       local: document.getElementById('localVideo')
               }
       }
};
*/


/*
 * Check out the full guide at
 *   http://sipjs.com/guides/make-call/
 *
 * This sample uses
 *   http://sipjs.com/download/sip-0.7.0.min.js
 *
 * Login with your developer account to receive calls at
 *   http://sipjs.com/demo-phone
 */

var session;

var endButton = document.getElementById('endCall');
endButton.addEventListener("click", function () {
    session.bye();
    alert("Call Ended");
}, false);

var startButton = document.getElementById('startCall');
startButton.addEventListener("click", function () {
       session = userAgent.invite('sip:jbrevik1@hsmove.onsip.com', options);
       alert("Call Started");
}, false);

//Creates the anonymous user agent so that you can make calls
var userAgent = new SIP.UA('jbrevik@hsmove.onsip.com');

//here you determine whether the call has video and audio
var options = {
    media: {
        constraints: {
            audio: true,
            video: true
        },
        render: {
            remote: document.getElementById('remoteVideo'),
            local: document.getElementById('localVideo')
        }
    }
};
