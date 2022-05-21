import 'package:flutter/material.dart';
import 'package:ze_flutter_app_1/mainPageButtons.dart';
import 'mainPageButtons.dart';
import 'mainPageInfo.dart';

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
      home: const MainPage(title: 'dah_flutterrrrr_app1 Demo Home Page'),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Dahhhh title")),
        body: Column(
          children: <Widget>[
            Expanded(flex: 5, child: MainPageInfo()),
            Expanded(flex: 5, child: MainPageButtons()),
          ],
        ));
  }
}
