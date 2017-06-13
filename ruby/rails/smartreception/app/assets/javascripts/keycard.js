var lockButton = document.getElementById('lockButton');
lockButton.addEventListener("click", function () {
    unlock(this.value);
    alert("Door Locked");
}, false);

function unlock(id) {
var settings = {
  "url": "/api/v1/unlock_door/" + id,
  "method": "GET",
  }



$.ajax(settings).done(function (response) {
  console.log(response);
});

};
/*
var unlockDoor = "<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\">\n\t<s:Body>\n\t\t<UnlockDoor xmlns=\"http://tempuri.org/\">\n\t\t\t<HID>70</HID>\n\t\t</UnlockDoor>\n\t</s:Body>\n</s:Envelope>";

var xhr = new XMLHttpRequest();
//xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});


function unlock () {
  xhr.open("POST", "http://keycard.homesmartfranchise.com/HardwareControlSmart/HardwareSmartService.svc");
  xhr.setRequestHeader("content-type", "text/xml");
  xhr.setRequestHeader("soapaction", "http://tempuri.org/IHardwareSmartService/UnlockDoor");
  xhr.setRequestHeader("cache-control", "no-cache");
  xhr.setRequestHeader("postman-token", "2f587790-6741-1712-1750-f14192ac4287");

  xhr.send(unlockDoor);
};


/*
function soap() {
         var xmlhttp = new XMLHttpRequest();
         xmlhttp.open('POST', 'http://keycard.homesmartfranchise.com/HardwareControlSmart/HardwareSmartService.svc', true);

var sr_lock =

'<?xml version="1.0" encoding="utf-8"?>' +
'<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">' +
  '<s:Body>' +
    '<LockDoor xmlns="http://tempuri.org/">' +
      '<HID>70</HID>' +
    '</LockDoor>' +
    '</s:Body>' +
'</s:Envelope>';

            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4) {
                    if (xmlhttp.status == 200) {
                        alert('done. use firebug/console to see network response');
                    }
                }
            }
            // Send the POST request
            xmlhttp.setRequestHeader('Content-Type', 'text/xml', 'SOAPAction', 'http://tempuri.org/IHardwareSmartService/LockDoor', 'Access-Control-Allow-Origin', '*');
            xmlhttp.send(sr_lock);

        }
*/
