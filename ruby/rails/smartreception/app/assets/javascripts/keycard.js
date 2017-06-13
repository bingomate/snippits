var lockButton = document.getElementById('lockButton');
lockButton.addEventListener("click", function () {
    unlock(this.value);
    alert("Door Locked");
}, false);

var lockButton = document.getElementById('UnlockButton');
lockButton.addEventListener("click", function () {
    lock(this.value);
    alert("Door Unlocked");
}, false);

function lock(id) {
var settings = {
  "url": "/api/v1/lock_door/" + id,
  "method": "GET",
  };

  $.ajax(settings).done(function (response) {
    console.log(response);
    });
  }

function unlock(id) {
var settings = {
  "url": "/api/v1/unlock_door/" + id,
  "method": "GET",
};

$.ajax(settings).done(function (response) {
  console.log(response);
  });

};
