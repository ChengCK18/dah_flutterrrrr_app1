import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MainPageInfo extends StatefulWidget {
  const MainPageInfo({Key? key}) : super(key: key);

  @override
  State<MainPageInfo> createState() => _MainPageInfoState();
}

class _MainPageInfoState extends State<MainPageInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Container(
                child: Center(child: LayoutBuilder(builder: (ctx, constraints) {
                  return Stack(children: <Widget>[
                    Container(
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxWidth * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ])),
                    Container(
                        height: constraints.maxHeight * 0.7,
                        width: constraints.maxWidth * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                        ))
                  ]);
                })),
                margin: const EdgeInsets.only(
                    left: 5.0, right: 2.5, top: 5.0, bottom: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]))),
        Expanded(
            flex: 5,
            child: Container(
                child: const Center(child: Text("Information Here")),
                margin: const EdgeInsets.only(
                    left: 2.5, right: 5.0, top: 5.0, bottom: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ])))
      ],
    );
  }
}
