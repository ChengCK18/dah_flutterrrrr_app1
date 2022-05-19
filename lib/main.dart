import 'package:flutter/material.dart';

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
            Expanded(
                flex: 5,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        flex: 5, child: Center(child: Text("Diagram Here"))),
                    Expanded(flex: 5, child: Text("Information Here"))
                  ],
                )),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(children: const <Widget>[
                  Expanded(
                      flex: 5, child: Center(child: Text("Buttonssssss Here")))
                ]),
                color: Colors.lightBlue,
              ),
            ),
          ],
        ));
  }
}
