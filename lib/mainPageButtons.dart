import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPageButtons extends StatefulWidget {
  const MainPageButtons({Key? key}) : super(key: key);

  @override
  State<MainPageButtons> createState() => _MainPageButtonsState();
}

class _MainPageButtonsState extends State<MainPageButtons> {
  final controller = TextEditingController();
  final double total_spend = 43.11;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
      child: Center(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Stack(children: <Widget>[
                Container(
                    //color: Colors.red,
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width - 100,
                        minHeight: MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Total Spending ➤ " + total_spend.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Row(children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.restaurant,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            constraints: BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: new InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                )))
                      ]),
                  SizedBox(
                    height: 10,
                    width: 5,
                  ), //To add spacing between two column
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.home,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            constraints: BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: new InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                ))),
                        Container(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.add, size: 18),
                            label: Text("Add"),
                          ),
                        )
                      ]),
                  SizedBox(
                    height: 10,
                    width: 5,
                  ), //To add spacing between two column
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.more_horiz,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            constraints: BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: new InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                )))
                      ]),
                ]),
              ]))),
      margin:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
    );
  }
}
