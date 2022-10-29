import 'package:flutter/material.dart';
import 'package:untitled/const.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _LogInPageState();
}

class _LogInPageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Новый дом'),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text(NoticesTest.NoticeAuthor)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(NoticesTest.NoticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(NoticesTest.NoticeBody),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
