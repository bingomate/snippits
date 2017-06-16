/*
var video = document.getElementById('motion');

var canvas = document.createElement('canvas');
canvas.width = 640;
canvas.height = 480;
var context = canvas.getContext('2d');

setInterval(capture, 100);

function capture() {
    context.drawImage(video, 0, 0, 640, 480);

    // do other stuff
}

var imageScore = 0;

for (var i = 0; i < imageData.data.length; i += 4) {
    var r = imageData.data[i] / 3;
    var g = imageData.data[i + 1] / 3;
    var b = imageData.data[i + 2] / 3;
    var pixelScore = r + g + b;

    if (pixelScore >= PIXEL_SCORE_THRESHOLD) {
        imageScore++;
    }
}

if (imageScore >= IMAGE_SCORE_THRESHOLD) {
    // we have motion!
}

*/
var video = document.querySelector("motion");
var canvasImg1 = document.querySelector(".img1");
var canvasImg2 = document.querySelector(".img2");
var canvasDiff = document.querySelector(".diff");
var button = document.querySelector("button");
var touchZone = document.querySelector(".touch");

var width = canvasImg1.width = canvasImg2.width = canvasDiff.width = 320;
var height = canvasImg1.height = canvasImg2.height = canvasDiff.height = 240;

var ctxImg1 = canvasImg1.getContext("2d");
var ctxImg2 = canvasImg2.getContext("2d");
var ctxDiff = canvasDiff.getContext("2d");

//reverse image to avoid mirror effect
ctxImg1.translate(width,0);
ctxImg2.translate(width,0);
ctxDiff.translate(width,0);

ctxImg1.scale(-1,1);
ctxImg2.scale(-1,1);
ctxDiff.scale(-1,1);

/*
navigator.getUserMedia = ( navigator.getUserMedia ||
                   navigator.webkitGetUserMedia ||
                   navigator.mozGetUserMedia ||
                   navigator.msGetUserMedia);

button.addEventListener("click", function(e){
      navigator.getUserMedia({video : true, audio : false},function(localMediaStream){
      video.src = window.URL.createObjectURL(localMediaStream);
      video.play();
      //wait a bit
      setTimeout(function(){loop()},600);

    }, function(e){
      console.log("erreur : "+e);
    })
})
*/
var lastImageData;
var dataDiff = ctxDiff.getImageData(0,0,width,height);
function loop() {
  ctxImg1.clearRect(0,0,width,height);
  try {

    ctxImg1.drawImage(video,0,0,width,height);


  } catch(e) {
    console.log(e);
  }
  var sourceData = ctxImg1.getImageData(0,0,width,height);
    if(!lastImageData) {
      lastImageData = ctxImg1.getImageData(0,0,width,height);
    }


    for(var i =0, len = sourceData.data.length; i < len ;i+=4) {

    /*	dataDiff.data[i] = Math.abs(sourceData.data[i] - lastImageData.data[i]);
      dataDiff.data[i+1] = Math.abs(sourceData.data[i+1] - lastImageData.data[i+1]);
      dataDiff.data[i+2] = Math.abs(sourceData.data[i+2] - lastImageData.data[i+2]);*/
      var average1 = (sourceData.data[i] + sourceData.data[i+1] + sourceData.data[i+2]) / 3;
      var average2 = (lastImageData.data[i] + lastImageData.data[i+1] + lastImageData.data[i+3]) / 3;
      var diff = threshold(fastAbs(average1 - average2));
      dataDiff.data[i] = diff;
      dataDiff.data[i+1] = diff;
      dataDiff.data[i+2] = diff;
      dataDiff.data[i+3] = 0xFF;
    }
    ctxDiff.putImageData(dataDiff,0,0);
    lastImageData = sourceData;

    var blendedData = ctxDiff.getImageData(0,0,touchZone.offsetWidth,touchZone.offsetHeight);
    var average = 0;
    for(var i = 0, len = blendedData.data.length; i < len; i+=4) {
      average += (blendedData.data[i] + blendedData.data[i+1] + blendedData.data[i+2]) / 3;
    }
    average = Math.round(average / (blendedData.data.length / 4));
    if(average < 240) {
      document.querySelector("body").style.background = rgba();
    }

  requestAnimationFrame(loop);

}


function threshold(value) { return (value > 0x15) ? 0xFF : 0; }



function fastAbs(value) {
  // equivalent to Math.abs();
  return (value ^ (value >> 31)) - (value >> 31);
}

function rgba() {
  var r = random(255);
  var g = random(255);
  var b = random(255);
  var alpha = Math.random();

  return "rgba("+r+","+g+","+b+","+alpha+")";
}

function random(max) {
  return Math.floor(Math.random() * max);
}
