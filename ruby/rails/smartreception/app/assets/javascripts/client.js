var configuration = {
    uri: 'jlbrevik@hsmove.onsip.com',
    authorizationUser: 'hsmove_jlbrevik',
    password: 'Em4y7pUv3K38oWnV',
};

var userAgent = new SIP.UA(configuration);

userAgent.on('invite', function (session) {
    session.accept({
        media: {
            render: {
                remote: document.getElementById('remoteVideo'),
                local: document.getElementById('localVideo')
            }
        }
    });
});
