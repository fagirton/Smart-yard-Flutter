import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/const.dart';

import 'package:untitled/models/weather_model.dart';
import 'package:untitled/widgets/LocationInfo.dart';
import 'package:untitled/widgets/LogInPage.dart';
import 'package:untitled/widgets/NoticesPage.dart';
import 'package:untitled/widgets/weatherWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Новый дом',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: NoticePage(),

          //body: LocationInheritedWidget(
           // child: WeatherPage(cityname: 'Moscow',))

        )
      );
  }
}






class WeatherPage extends StatefulWidget {
  final String cityname;
  WeatherPage({
    Key? key,
    required this.cityname,
  }) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}




class _WeatherPageState extends State<WeatherPage> {
  List<Weather> weatherForecast = [];
  List<ListItem> itemsToBuild = [];
  bool _isLoading = true;
  Placemark? _placemark;
  
  // @override
  // void initState() {
  //   DateTime now = DateTime.now();
  //   DateTime currentDay = DateTime(
  //     now.year, now.month, now.day, 0,0,0,0,0
  //   );
  //   weatherForecast.add(DayHeading(dateTime: currentDay));
  //
  //   List weatherData = [
  //     Weather(dateTime: currentDay, degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 6)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 12)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 18)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 24)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 30)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 36)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 42)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 48)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 54)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //     Weather(dateTime: currentDay.add(Duration(hours: 60)), degree: 20, Clouds: 90, iconUrl: '04d'),
  //   ];
  //
  //   DateTime nextDay = DateTime(
  //     currentDay.year, currentDay.month, currentDay.day, 23,59,59
  //   );
  //
  //   for (var element in weatherData) {
  //     element = element as Weather;
  //     if(element.dateTime.isAfter(nextDay)){
  //       currentDay = nextDay;
  //       nextDay = DateTime(
  //           currentDay.year, currentDay.month, currentDay.day + 1, 23,59,59
  //       );
  //       weatherForecast.add(DayHeading(dateTime: currentDay.add(Duration(days: 1))));
  //     }
  //     weatherForecast.add(element);
  //   }
  //   super.initState();
  // }

  @override
  void didChangeDependencies(){
    _placemark = LocationInfo.of(context).placemark;
    _getWheatherData();
  }

  _getWheatherData() async {
    if (_placemark == null) return ;
    Map<String, dynamic> _queryParams ={
      "APPID": Constant.WEATHER_APP_ID,
      "units": "metric",
      "lat": _placemark!.lat.toString(),
      "lon": _placemark!.lon.toString(),
    };

    var uri = Uri.https(Constant.WEATHER_BASE_URL, Constant.WEATHER_FORECAST_URL, _queryParams);
    var response = await http.get(uri);

    print(response.toString());

    var parsedResponse = jsonDecode(response.body);

    if(parsedResponse["cod"] != "200") return print(parsedResponse["cod"]);

    parsedResponse["list"].forEach((period){
      var dateTime = DateTime.fromMillisecondsSinceEpoch(period["dt"] * 1000);
      var degree = period["main"]["temp"];
      var clouds = period["clouds"]["all"];
      var icon = period["weather"][0]["icon"];

      weatherForecast.add(Weather(dateTime: dateTime, degree: degree, Clouds: clouds, iconUrl: icon));
    });

    initWheatherWithData();

    setState(() {
      _isLoading = false;
    });
  }
  
  initWheatherWithData(){
    var now = DateTime.now();
    var itCurrentDay = now;
    var itNextDay = DateTime(now.year, now.month, now.day +1, 0,0,0,0,0);

    itemsToBuild.add(DayHeading(dateTime: now));

    for(int i=0; i < weatherForecast.length; i++){
      if(weatherForecast[i].getDateTime() == itNextDay){
        itCurrentDay = itNextDay;
        itNextDay = DateTime(itNextDay.year, itNextDay.month, itNextDay.day + 1, 0,0,0,0,0);
        itemsToBuild.add(DayHeading(dateTime: itCurrentDay));
        itemsToBuild.add(weatherForecast[i]);
      }
      else if (weatherForecast[i].getDateTime().isAfter(itNextDay)){
        itCurrentDay = itNextDay;
        itNextDay = DateTime(itNextDay.year, itNextDay.month, itNextDay.day +1, 0,0,0,0,0);
        itemsToBuild.add(DayHeading(dateTime: itCurrentDay));
      }
      else{
        itemsToBuild.add(weatherForecast[i]);
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(_isLoading){
      return Center(child: CircularProgressIndicator(),);
    }
    else {
      return ListView.builder(
          itemCount: weatherForecast.length,
          itemBuilder: (BuildContext ctx, int index) {
            final item = itemsToBuild[index];
            if(item is Weather) return WeatherWidget(weather: item);
            else if (item is DayHeading) return dayHeadingwidget(dayHeading: item);
            else return Text("Error type");
            // return WeatherWidget(weather: weatherForecast[index]);


            // if(weatherForecast[index] is Weather){
            //   return WeatherWidget(weather: weatherForecast[index]);
            // }
            // else if(weatherForecast[index] is DayHeading){
            //   return dayHeadingwidget(dayHeading: weatherForecast[index]);
            // }
            // else {
            //   return Text("Неверный тип");
            // }
          }
      );
    }
  }
}
