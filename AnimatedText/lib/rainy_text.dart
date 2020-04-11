import 'package:flutter/material.dart';

class RainyText extends StatefulWidget {
  @override
  _RainyTextState createState() => _RainyTextState();
}

class _RainyTextState extends State<RainyText>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this)
          ..repeat();
    animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, 30),
    ).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SlideTransition(
        position: animation,
        child: Text(
          '``````````````````````````````````````````````````',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
