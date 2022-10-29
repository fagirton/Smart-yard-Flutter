import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/models/weather_model.dart';

import 'package:geolocator/geolocator.dart';
import 'package:untitled/widgets/LocationInfo.dart';

import '../const.dart';

// class WeatherWidget extends StatelessWidget {
//   // final Weather weather;
//
//   // const WeatherWidget({
//   //   Key? key,
//   //   required this.weather
//   // }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//           children: [
//             Expanded(
//                 flex: 3,
//                 child: Text(
//                     DateFormat("dd.MM.yyyy HH:mm").format(weather.dateTime))
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Text(weather.degree.toString() + "C")
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Text(weather.Clouds.toString())
//             ),
//             Expanded(
//                 flex: 1,
//                 child: Image.network(weather.getIconURL())
//             ),
//           ]
//       ),
//     );
//   }
// }


// class NoticeWidget extends StatelessWidget {
//   final NoticeUsable notice;
//
//   const NoticeWidget({
//     Key? key,
//     required this.notice
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.all(2),
//         color: Colors.teal[200],
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             children: const [
//               Card(child: Text(notice.ownerName)),
//               Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(notice.title,
//                       style: TextStyle(fontWeight: FontWeight.bold))),
//               Padding(
//                 padding: EdgeInsets.all(5.0),
//                 child: Text(notice.body, maxLines: 3,overflow: TextOverflow.ellipsis,),
//               ),
//             ],
//           ),
//         ));
//   }
// }

class dayHeadingwidget extends StatelessWidget {
  final DayHeading dayHeading;
  static final DateFormat _dateFormat = DateFormat('EEEE');
  const dayHeadingwidget({
    Key? key,
    required this.dayHeading
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [
          Text(
            "${_dateFormat.format(dayHeading.dateTime)} ${dayHeading.dateTime.month}.${dayHeading.dateTime.day}"
          ),
          const Divider()
        ],
      ),
    );
  }
}
//
// class LocationInheritedWidget extends StatefulWidget {
//   final Widget child;
//   const LocationInheritedWidget({
//     Key? key,
//     required this.child
//   }) : super(key: key);
//
//   @override
//   State<LocationInheritedWidget> createState() => _LocationInheritedWidgetState();
// }
// //
// // class _LocationInheritedWidgetState extends State<LocationInheritedWidget> {
// //   late Placemark _placemark;
// //   bool _isLoading = true;
// //
// //   _loadData() async{
// //     Position location =await _determinePosition();
// //     Placemark place = Placemark(
// //         lat: location.latitude,
// //         lon: location.longitude,
// //         cityName: "Ivanovo"
// //     );
// //
// //     setState(() {
// //       _placemark = place;
// //       _isLoading = false;
// //     });
// //   }
// //
// //   _determinePosition() async {
// //     bool serviceEnabled;
// //     LocationPermission permission;
// //
// //     // Test if location services are enabled.
// //     serviceEnabled = await Geolocator.isLocationServiceEnabled();
// //     if (!serviceEnabled) {
// //       // Location services are not enabled don't continue
// //       // accessing the position and request users of the
// //       // App to enable the location services.
// //       return Future.error('Location services are disabled.');
// //     }
// //
// //     permission = await Geolocator.checkPermission();
// //     if (permission == LocationPermission.denied) {
// //       permission = await Geolocator.requestPermission();
// //       if (permission == LocationPermission.denied) {
// //         // Permissions are denied, next time you could try
// //         // requesting permissions again (this is also where
// //         // Android's shouldShowRequestPermissionRationale
// //         // returned true. According to Android guidelines
// //         // your App should show an explanatory UI now.
// //         return Future.error('Location permissions are denied');
// //       }
// //     }
// //
// //     if (permission == LocationPermission.deniedForever) {
// //       // Permissions are denied forever, handle appropriately.
// //       return Future.error(
// //           'Location permissions are permanently denied, we cannot request permissions.');
// //     }
// //
// //     // When we reach here, permissions are granted and we can
// //     // continue accessing the position of the device.
// //     return await Geolocator.getCurrentPosition();
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _loadData();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return _isLoading
// //         ? Center(child: CircularProgressIndicator(),)
// //         : LocationInfo(_placemark, widget.child);
// //   }
// // }
