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
      title: 'Flutter Demo - Budget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double totalSpend = 0;
  double totalIncome = 0;

  refreshIncome(value) {
    setState(() {
      totalIncome = totalIncome + value;
    });
  }

  refreshSpend(value) {
    setState(() {
      totalSpend = totalSpend + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Budget")),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: MainPageInfo(
                    totalSpend: totalSpend,
                    totalIncome: totalIncome <= 0 ? 1 : totalIncome)),
            Expanded(
                flex: 5,
                child: MainPageButtons(
                    totalSpend: totalSpend,
                    setTotalSpend: refreshSpend,
                    setTotalIncome: refreshIncome)),
          ],
        ));
  }
}
