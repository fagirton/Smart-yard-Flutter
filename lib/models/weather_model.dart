class Weather extends ListItem{
  DateTime dateTime;
  num degree;
  String iconUrl;
  int Clouds;

  Weather({
    required this.dateTime,
    required this.degree,
    required this.Clouds,
    required this.iconUrl,
  });

  static const String weatherURL = "http://openweathermap.org/img/wn/";

  String getIconURL(){
    return "$weatherURL$iconUrl.png";
  }

  DateTime getDateTime(){ return dateTime;}
}

abstract class ListItem{}

class DayHeading extends ListItem{
  final DateTime dateTime;

  DayHeading({
    required this.dateTime
  });

}

class Placemark {
  final double lat;
  final double lon;
  final String cityName;
  final int timeStamp = DateTime
      .now()
      .millisecondsSinceEpoch;

  Placemark({
    required this.lat,
    required this.lon,
    required this.cityName,
  });

  Map<String, dynamic> getPlacemark(){
    return{
      "lat": this.lat,
      "lon": this.lon,
      "cityName": this.cityName,
      "timeStamp": this.timeStamp,
    };
  }

}