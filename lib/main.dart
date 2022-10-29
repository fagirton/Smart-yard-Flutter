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
          body: LogInPage(),
        )
    );
  }
}
//
// class NoticePage_real extends StatefulWidget {
//
//
//   @override
//   State<NoticePage_real> createState() => _NoticePage_real_State();
// }



//
//
// class _NoticePage_real_State extends State<NoticePage_real> {
//   List<ListItem> itemsToBuild = [];
//   bool _isLoading = true;
//   List<ListItem> NoticeList = [];
//
//
//   // @override
//   // void initState() {
//   //   DateTime now = DateTime.now();
//   //   DateTime currentDay = DateTime(
//   //     now.year, now.month, now.day, 0,0,0,0,0
//   //   );
//   //   weatherForecast.add(DayHeading(dateTime: currentDay));
//   //
//   //   List weatherData = [
//   //     Weather(dateTime: currentDay, degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 6)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 12)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 18)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 24)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 30)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 36)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 42)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 48)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 54)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //     Weather(dateTime: currentDay.add(Duration(hours: 60)), degree: 20, Clouds: 90, iconUrl: '04d'),
//   //   ];
//   //
//   //   DateTime nextDay = DateTime(
//   //     currentDay.year, currentDay.month, currentDay.day, 23,59,59
//   //   );
//   //
//   //   for (var element in weatherData) {
//   //     element = element as Weather;
//   //     if(element.dateTime.isAfter(nextDay)){
//   //       currentDay = nextDay;
//   //       nextDay = DateTime(
//   //           currentDay.year, currentDay.month, currentDay.day + 1, 23,59,59
//   //       );
//   //       weatherForecast.add(DayHeading(dateTime: currentDay.add(Duration(days: 1))));
//   //     }
//   //     weatherForecast.add(element);
//   //   }
//   //   super.initState();
//   // }
//
//   @override
//   void didChangeDependencies() {
//     _getNoticeData();
//   }
//
//   _getNoticeData() async {
//     // var uri = Uri.http(Constant.BASE_URL, Constant.NOTICES_URL,
//     //     //{'skip': 0, 'limit': 100}
//     //     );
//     // var response = await http.get(uri);
//
//     var parsedResponse = jsonDecode(NoticesTest.response);
//
//     print(parsedResponse);
//
//     //if (parsedResponse["cod"] != "200") return print(parsedResponse["cod"]);
//
//     // .forEach((period)
//     //["list"]
//     //parsedResponse({
//     var ownerName = parsedResponse["firstname"] + parsedResponse["surname"];
//     var title = parsedResponse["notice"]["title"];
//     var body = parsedResponse["notice"]["body"];
//     var id = parsedResponse["id"];
//
//     NoticeList.add(NoticeUsable(
//     ownerName: ownerName, title: title, body: body, id: id));
//     //});
//
//
//     setState(() {
//       _isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return Center(child: CircularProgressIndicator(),);
//     }
//     else {
//       return GridView.count(
//           primary: false,
//           padding: const EdgeInsets.all(10),
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           crossAxisCount: 2,
//           children: [ (BuildContext ctx, int index) {
//             final notice = NoticeList[index];
//               return NoticeWidget(notice: notice);
//           }
//       ]);
//     }
//   }
// }
