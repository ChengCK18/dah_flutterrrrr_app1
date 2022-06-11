import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPageButtons extends StatefulWidget {
  const MainPageButtons(
      {Key? key,
      required this.totalSpend,
      required this.setTotalSpend,
      required this.setTotalIncome})
      : super(key: key);
  final double totalSpend;
  final Function setTotalSpend;
  final Function setTotalIncome;

  @override
  State<MainPageButtons> createState() => _MainPageButtonsState();
}

class _MainPageButtonsState extends State<MainPageButtons> {
  final spend1Controller = TextEditingController();
  final spend2Controller = TextEditingController();
  final spend3Controller = TextEditingController();

  @override
  void dispose() {
    spend1Controller.dispose();
    spend2Controller.dispose();
    spend3Controller.dispose();

    super.dispose();
  }

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
                          "Total Spending ➤ " + widget.totalSpend.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )),
                Container(
                    //color: Colors.red,
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width - 100,
                        minHeight: MediaQuery.of(context).size.height),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Income/Spendings",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
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
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 5),
                            constraints: const BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  controller: spend1Controller,
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                ))),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              if (spend1Controller.text == "") {
                                spend1Controller.text = "0";
                              }
                              widget.setTotalSpend(
                                  double.parse(spend1Controller.text));
                            });

                            spend1Controller.clear();
                          },
                          icon: const Icon(Icons.remove, size: 18),
                          label: const Text("Spend"),
                        )
                      ]),
                  const SizedBox(
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
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 5),
                            constraints: const BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  controller: spend2Controller,
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                ))),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              if (spend2Controller.text == "") {
                                spend2Controller.text = "0";
                              }
                              widget.setTotalSpend(
                                  double.parse(spend2Controller.text));
                            });
                            spend2Controller.clear();
                            // Respond to button press
                          },
                          icon: const Icon(Icons.remove, size: 18),
                          label: const Text("Spend"),
                        ),
                      ]),

                  const SizedBox(
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
                            Icons.wallet_membership_sharp,
                            size: 20,
                          ),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 5),
                            constraints: const BoxConstraints(maxWidth: 100),
                            child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: TextField(
                                  controller: spend3Controller,
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Amount",
                                      hintText: "..."),
                                ))),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              if (spend3Controller.text == "") {
                                spend3Controller.text = "0";
                              }

                              widget.setTotalIncome(
                                  double.parse(spend3Controller.text));
                            });

                            spend3Controller.clear();
                          },
                          icon: const Icon(Icons.add, size: 18),
                          label: const Text("Income"),
                        )
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
