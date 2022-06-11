import 'package:flutter/material.dart';

class MainPageInfo extends StatefulWidget {
  const MainPageInfo(
      {Key? key, required this.totalSpend, required this.totalIncome})
      : super(key: key);
  final double totalSpend;
  final double totalIncome;
  @override
  State<MainPageInfo> createState() => _MainPageInfoState();
}

class _MainPageInfoState extends State<MainPageInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Container(
                child: LayoutBuilder(builder: (ctx, constraints) {
                  return Row(children: [
                    Stack(children: <Widget>[
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
                          height: (constraints.maxHeight * 0.8) *
                              ((1 -
                                          ((widget.totalIncome -
                                                  widget.totalSpend) /
                                              widget.totalIncome)) >
                                      0.8
                                  ? 0.8
                                  : (1 -
                                      ((widget.totalIncome -
                                              widget.totalSpend) /
                                          widget.totalIncome))),
                          width: constraints.maxWidth * 0.4,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          )),
                    ]),
                    LayoutBuilder(builder: (ctx, constraints) {
                      return Column(children: [
                        Container(
                          child: const Text("100%"),
                          padding:
                              EdgeInsets.only(top: constraints.maxHeight * 0.1),
                        ),
                        Container(
                          child:
                              const Text("0%"), //Need to subtract val pad value
                          padding:
                              EdgeInsets.only(top: constraints.maxHeight * 0.7),
                        )
                      ]);
                    }),
                    Text(
                      "${widget.totalIncome - widget.totalSpend}",
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]);
                }),
                margin: const EdgeInsets.only(
                    left: 5.0, right: 2.5, top: 5.0, bottom: 0),
                padding: const EdgeInsets.only(left: 10),
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
                child: Center(
                    child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Summary",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                  Flexible(
                      child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 5, bottom: 5),
                          child: Text(
                            "Income\n${widget.totalIncome}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  // changes position of shadow
                                ),
                              ]))),
                  Flexible(
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 5, bottom: 5),
                          child: Text(
                            'Spending\n ${widget.totalSpend}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  // changes position of shadow
                                ),
                              ]))),
                  Flexible(
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5, bottom: 5),
                          child: Text(
                            "Balance\n${widget.totalIncome - widget.totalSpend}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  // changes position of shadow
                                ),
                              ])))
                ])),
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
