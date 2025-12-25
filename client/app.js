function getBathValue() {
    var uiBathrooms = document.getElementsByName("uiBathrooms");
    for (var i = 0; i < uiBathrooms.length; i++) {
        if (uiBathrooms[i].checked) {
            return parseInt(uiBathrooms[i].value);
        }
    }
    return -1;
}

function getBHKValue() {
    var uiBHK = document.getElementsByName("uiBHK");
    for (var i = 0; i < uiBHK.length; i++) {
        if (uiBHK[i].checked) {
            return parseInt(uiBHK[i].value);
        }
    }
    return -1;
}

function onClickedEstimatePrice() {
    console.log("Estimate price button clicked");

    var sqft = document.getElementById("uiSqft").value;
    var bhk = getBHKValue();
    var bath = getBathValue();
    var location = document.getElementById("uilocations").value;
    var estPrice = document.getElementById("uiEstimatedPrice");

    if (!sqft || bhk <= 0 || bath <= 0 || !location) {
        estPrice.innerHTML = "⚠️ Please fill all fields properly";
        return;
    }
          var url="/api/predict_home_price";
    //var url = "http://127.0.0.1:5000/predict_home_price";

    $.post(url, {
        total_sqft: sqft,
        bhk: bhk,
        bath: bath,
        location: location
    }, function (data) {
        estPrice.innerHTML = "₹ " + data.estimated_price + " Lakhs";
    }).fail(function (xhr) {
        console.error(xhr.responseText);
        estPrice.innerHTML = "❌ Error predicting price";
    });
}

function onPageLoad() {
    console.log("document loaded");

   // var url = "http://127.0.0.1:5000/get_location_names"; using ngx so no use
    var url="/api/get_location_names";
    $.get(url, function (data) {
        if (data && data.locations) {
            $('#uilocations').empty();
            for (var i = 0; i < data.locations.length; i++) {
                $('#uilocations').append(new Option(data.locations[i]));
            }
        }
    });
}

window.onload = onPageLoad;
