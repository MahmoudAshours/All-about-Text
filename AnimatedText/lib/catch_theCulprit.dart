import 'package:flutter/material.dart';

class CatchTheBurglar extends StatefulWidget {
  @override
  _CatchTheBurglarState createState() => _CatchTheBurglarState();
}

class _CatchTheBurglarState extends State<CatchTheBurglar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTapDown: (tapDownDetails) {
        Overlay.of(context).insert(OverlayEntry(
          builder: (context) => Positioned(
            child: Container(
              color: Colors.red,
            ),
            width: 56,
            height: 56,
            top: tapDownDetails.globalPosition.dy,
            left: tapDownDetails.globalPosition.dx,
          ),
        ));
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Text(
              'H',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
