import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPageButtons extends StatefulWidget {
  const MainPageButtons(
      {Key? key, required this.totalSpend, required this.set_totalSpend})
      : super(key: key);
  final double totalSpend;
  final Function set_totalSpend;

  @override
  State<MainPageButtons> createState() => _MainPageButtonsState();
}

class _MainPageButtonsState extends State<MainPageButtons> {
  final spend1_controller = TextEditingController();
  final spend2_controller = TextEditingController();
  final spend3_controller = TextEditingController();

  @override
  void dispose() {
    spend1_controller.dispose();
    spend2_controller.dispose();
    spend3_controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Rendering...");
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
                                  controller: spend1_controller,
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
                                  controller: spend2_controller,
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
                              setState(() {
                                if (spend1_controller.text == "") {
                                  spend1_controller.text = "0";
                                }
                                if (spend2_controller.text == "") {
                                  spend2_controller.text = "0";
                                }
                                if (spend3_controller.text == "") {
                                  spend3_controller.text = "0";
                                }

                                double new_spend_amount =
                                    double.parse(spend1_controller.text) +
                                        double.parse(spend2_controller.text) +
                                        double.parse(spend3_controller.text);

                                widget.set_totalSpend(new_spend_amount);
                              });

                              spend1_controller.clear();
                              spend2_controller.clear();
                              spend3_controller.clear();
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
                  ),
                  Text(widget.totalSpend
                      .toString()), //To add spacing between two column
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
                                  controller: spend3_controller,
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
