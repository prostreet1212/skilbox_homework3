// Dart imports:
import 'dart:async';
import 'dart:io';
import 'dart:js';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> listKorn = [
    {
      'Джонатан Дэвис':
          'https://radioultra.ru/storage/87265/conversions/Jonathan_Davis_-_Korn_-_Rock_im_Park_2016-social.jpg'
    },
    {
      'Брайан Уэлч':
          'https://radioultra.ru/uploads/photos/1/2020/06/photoeditorsdk-export%20(80).png'
    },
    {
      'Филди':
          'https://radioultra.ru/storage/78353/conversions/korn-fieldy-social.jpg'
    },
    {
      'Джеймс Шаффер':
          'https://upload.wikimedia.org/wikipedia/commons/8/83/Korn_Rock_Im_Park_2016_%2812_von_14%29_%281%29.jpg',
    },
    {
      'Рэй Лузье':
          'https://upload.wikimedia.org/wikipedia/commons/e/e7/Ray12.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Homework3-2'),
      ),
      body: CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                enableInfiniteScroll: false,
                scrollDirection: Axis.vertical),
            items: listKorn.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    //alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(color: Color.fromARGB(
                        255, 234, 234, 234)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          e.values.first,
                        ),
                        SizedBox(height: 8,),
                        Text(e.keys.first,style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          )

    );
  }
}
