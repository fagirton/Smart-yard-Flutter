import 'package:flutter/material.dart';
import 'package:untitled/models/weather_model.dart';

class PlacesPage extends StatefulWidget {
  const PlacesPage({Key? key}) : super(key: key);

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  final List<Placemark> _places =[
    Placemark(lat: 55.7, lon: 37.62, cityName: "Moscow"),
    Placemark(lat: 48.87, lon: 2.29, cityName: "Paris"),
    Placemark(lat: 51.5, lon: -0.12, cityName: "London"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый дом'),
      ),
      body: ListView.builder(
        itemCount: _places.length,
          itemBuilder:(ctx, index){
          return Dismissible(
              key: Key(_places[index].cityName),
              onDismissed: (direction){
                setState(() {
                  _places.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Место удалено")));
              },
              background: Container(color: Colors.red,),
              child: ListTile(
                title: Text(_places[index].cityName),
              )
          );
        }
      ),
    );
  }
}
