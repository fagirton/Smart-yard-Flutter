import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Новый дом'),
        ),
        body: Center(
          child: SizedBox(
            width: 300.0,
            height: 400.0,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(1000.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0))),
              child: const Card(
                child: Padding(padding: EdgeInsets.all(10.0), child:
                  Text(
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                      'Вход'),

              ),
            ),
          ),
        )));
  }
}
