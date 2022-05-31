import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPageButtons extends StatefulWidget {
  const MainPageButtons({Key? key}) : super(key: key);

  @override
  State<MainPageButtons> createState() => _MainPageButtonsState();
}

class _MainPageButtonsState extends State<MainPageButtons> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
      child: Center(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        child: const Icon(
                          Icons.account_balance,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                      ),
                      Container(
                          constraints: BoxConstraints(maxWidth: 100),
                          child: TextFormField(
                              controller: controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                              ],
                              decoration: InputDecoration(
                                  labelText: "amount",
                                  hintText: "da amount",
                                  icon: Icon(Icons.phone_iphone))))
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
