import 'package:flutter/material.dart';
import 'package:untitled/models/weather_model.dart';

// class PlacesPage extends StatefulWidget {
//   const PlacesPage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<PlacesPage> createState() => _PlacesPageState();
// // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Новый дом'),
//       ),
//       body: ListView.builder(
//         itemCount: _places.length,
//           itemBuilder:(ctx, index){
//           return Dismissible(
//               key: Key(_places[index].cityName),
//               onDismissed: (direction){
//                 setState(() {
//                   _places.removeAt(index);
//                 });
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Место удалено")));
//               },
//               background: Container(color: Colors.red,),
//               child: ListTile(
//                 title: Text(_places[index].cityName),
//               )
//           );
//         }
//       ),
//     );
//   }
// }
