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
            Container(
                padding: const EdgeInsets.all(2),
                color: Colors.teal[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Card(child: Text("Реклама")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Приглашаем в кино со скидкой 50%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Кинотеатр \"Синема\" предлагает скидку 50% на следующие сеансы: ", maxLines: 3,overflow: TextOverflow.ellipsis,),
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
                      Card(child: Text("Итару Хашида")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Куплю старый компьютер",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Куплю компьютер IBM модели 5100, в любом состоянии, уместен торг", maxLines: 3,overflow: TextOverflow.ellipsis,),
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
                      Card(child: Text("Маюри Шиина")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Пошив костюмов на заказ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("Выполняю заказы любой сложности, в стоимость заказа входит материал", maxLines: 3,overflow: TextOverflow.ellipsis,),
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
                      Card(child: Text("Юго Тенноджи")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Трубки Брауна",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("В наличии ЭЛТ-телевизоры на любой вкус, возможен ремонт ваших телевизоров", maxLines: 3,overflow: TextOverflow.ellipsis,),
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
                      Card(child: Text("Управляющая компания")),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Сбор денег на ремон крыши",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text("В ближайшее время всем сдать деньги на ремонт крыши", maxLines: 3,overflow: TextOverflow.ellipsis,),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
