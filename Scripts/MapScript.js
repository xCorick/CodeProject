function iniciarMap(){
    var coord = { lat: 27.469620868075932, lng: -109.94896400266865 };
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 10,
      center: coord
    });
    var marker = new google.maps.Marker({
      position: coord,
      map: map
    });
}