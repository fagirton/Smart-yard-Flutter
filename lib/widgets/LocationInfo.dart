import "package:flutter/material.dart";
import 'package:untitled/models/weather_model.dart';
//
// class LocationInfo extends InheritedWidget{
//   final Placemark placemark;
//
//   LocationInfo(this.placemark, Widget child) : super(child: child);
//
//   static LocationInfo of(BuildContext context) =>
//       context.dependOnInheritedWidgetOfExactType<LocationInfo>()!;
//
//
//
//   @override
//   bool updateShouldNotify(LocationInfo oldLocationInfo) {
//     var oldLocationTime = oldLocationInfo.placemark.timeStamp;
//     var newLocationTime = placemark.timeStamp;
//
//     return oldLocationTime < newLocationTime;
//   }
//
//
// }