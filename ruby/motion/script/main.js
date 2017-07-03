function reload()
{
   setTimeout('reloadImg("refresh")',1000)
};

function reloadImg(id)
{
   var obj = document.getElementById(id);
   var date = new Date();
   obj.src = "http://192.168.1.104/snapshot.cgi?user=hstest&pwd=Jb314159!&t=" + Math.floor(date.getTime()/1000);
}
/*
var image1;
var image2;
function capture() {

  var image1 = document.getElementById('refresh').src
  setTimeout(function(){
   var image2 = document.getElementById('refresh').src
   compare(image1, image2);
}, 1000);

}

var c = document.getElementById("canvas");
var ctx = c.getContext("2d");
var img = document.getElementById("refresh");
ctx.drawImage(img,10,10);

setInterval(capture, 1000)

function capture() {
    ctx.drawImage(img, 0, 0, 640, 480);

    // do other stuff
}
*/
