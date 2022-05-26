import 'package:flutter/material.dart';

class MainPageButtons extends StatefulWidget {
  const MainPageButtons({Key? key}) : super(key: key);

  @override
  State<MainPageButtons> createState() => _MainPageButtonsState();
}

class _MainPageButtonsState extends State<MainPageButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            Container(
                child: ElevatedButton.icon(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                size: 30.0,
              ),
              label: Text('Elevated Button'),
              onPressed: () {
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
            )),
            Container(
                child: ElevatedButton.icon(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                size: 30.0,
              ),
              label: Text('Elevated Button'),
              onPressed: () {
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
            )),
            Container(
                child: ElevatedButton.icon(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                size: 30.0,
              ),
              label: Text('Elevated Button'),
              onPressed: () {
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
            )),
            Container(
                child: ElevatedButton.icon(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                size: 30.0,
              ),
              label: Text('Elevated Button'),
              onPressed: () {
                print('Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
            ))
          ])),
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
