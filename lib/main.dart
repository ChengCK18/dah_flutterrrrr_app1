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
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                            child: Center(child: Text("Diagram Here")),
                            margin: const EdgeInsets.only(
                                left: 5.0, right: 2.5, top: 5.0, bottom: 0),
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]))),
                    Expanded(
                        flex: 5,
                        child: Container(
                            child: Center(child: Text("Information Here")),
                            margin: const EdgeInsets.only(
                                left: 2.5, right: 5.0, top: 5.0, bottom: 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ])))
                  ],
                )),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(children: const <Widget>[
                  Expanded(
                      flex: 5, child: Center(child: Text("Buttonssssss Here")))
                ]),
                margin: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
