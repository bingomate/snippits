
// Take in ZIP code(s) and Starting and Ending Price in URL ex. slideshow.html?zip=85555&startprice=250000&endprice=350000
function GetURLParameter(sParam) {

        var sPageURL = window.location.search.substring(1);
        var sURLVariables = sPageURL.split('&');
        for (var i = 0; i < sURLVariables.length; i++)

            {

                var sParameterName = sURLVariables[i].split('=');
                if (sParameterName[0] == sParam)

        {

                    return sParameterName[1];

        }

    }
}

//Store URL parameters into variables
var zip = GetURLParameter('zip');
var startprice = GetURLParameter('startprice');
var endprice = GetURLParameter('endprice');


//API endoint
var listingAPI = "https://homesmart.com/api/v2/search/json.slideshow?multi_zip="+zip+"&"+"price_start="+startprice+"&"+"price_end="+endprice+"&page=0&per_page=100";

var i = 0;


$(document).ready(function() {

    $.fn.slideshow = function() {

            $.getJSON(listingAPI, function (json) {

                    var propCount = json.properties;


                        if (i < propCount.length){


                                    var main_photo = json.properties[i].main_photo;


                                    $("#prop_address").empty();
                                    var full_address = $("<td>"+json.properties[i].full_address+"</td>");
                                    $('#prop_address').append(full_address);

                                    $("#price").empty();
                                    var price = $("<td>"+json.properties[i].price+"</td>");
                                    $('#price').append(price);

                                    var latitude = json.properties[i].latitude;
                                    var longitude = json.properties[i].longitude;

                                    var photo_list = json.properties[i].photos;

                                    $('#thumbs-container').empty();
                                    for (s = 0; s < 20; s++) {
                                    $('#thumbs-container').append('<div><img src="'+photo_list[s]+'"></div>');
                                    };

                                    $('#slide').empty();
                                    $.each(photo_list, function(index,photo) {
                                    $('#slide').append('<div><img src="'+photo+'"'+'width="1920"'+'height="1080"'+'</div>');

});



                                    $("#slide > div:gt(0)").hide();
                                    var slidetask = setInterval(function() {
                                    $('#slide > div:first')
                                    .fadeOut(3000)
                                    .next()
                                    .fadeIn(2000)
                                    .end()
                                    .appendTo('#slide');
                                },  8000);







                                     var timeout = photo_list.length * 8000;
                                     setTimeout(function() {
                                         i = i + 1;
                                         console.log(i);
                                         clearInterval(slidetask);
                                         $.fn.slideshow();
                                     }, timeout);
                                    }
                                    else {
                                        i = 0;
                                        clearInterval(slidetask);
                                        $.fn.slideshow();
                                    }


    })


}

$.fn.slideshow();


});

/*
$(document).ready(function() {
  $.simpleWeather({
    woeid: '2357536', //2357536
    location: '85027',
    unit: 'f',
    success: function(weather) {
      wthcurrentDay = '<p>'+weather.forecast[0].high+'&deg'+'</p>';
      wthcurrentDay += '<p>'+'<i class="icon-'+weather.code+'">'+'</i>'+'</p>';
      $(".weather-currentDay").html(wthcurrentDay);

      wthnextDay = '<p>'+weather.forecast[1].high+'&deg'+'</p>';
      $(".weather-nextDay").html(wthnextDay);

      /*icocurrent = '<p>'+'<i class="icon-'+weather.code+'"></i></p>';
      $(".i").html(icocurrent); 

      wthlastDay = '<p>'+weather.forecast[2].high+'&deg'+'</p>';
      $(".weather-lastDay").html(wthlastDay);

      nextDay = '<p>'+weather.forecast[1].day+'</p>';
      $(".nextDay").html(nextDay);

      lastDay = '<p>'+weather.forecast[2].day+'</p>';
      $(".lastDay").html(lastDay);

    },
    error: function(error) {
      $(".weather").html('<p>'+error+'</p>');
    }
  });
});
*/
