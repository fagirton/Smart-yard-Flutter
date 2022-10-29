import 'dart:convert';

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
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(2),
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
                        padding: EdgeInsets.all(5.0),
                        child: Text(NoticesTest.NoticeBody, maxLines: 3,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(2),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text("Курису Макисе")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Кто выкручивает лампочки?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("И это уже не первый раз повторяется! Как жить в подъезде без света? Или ", maxLines: 3,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                )),

            Container(
                padding: const EdgeInsets.all(2),
                color: Colors.teal[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text("Ринтаро Окабе")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Микроволновка",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Не найдется ли у кого-нибудь ненужная микроволновка? Очень нужно для экспериментов", maxLines: 3,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(2),
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
                          child: Text("Собрание дома в Discord",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("1 ноября в 19:00 состоится собрание жителей дома. Присутствие обязательно", maxLines: 3,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
