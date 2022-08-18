// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Homework3-1'),
        ),
        body:Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
                color: Colors.orangeAccent,
              ),
              // SizedBox(height: 20,),
              SvgPicture.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/41/Korn_Logo_Black.svg',
                color: Colors.green,
              ),
            ],
          ),
        )



    );
  }
}
