import 'package:flutter/material.dart';

class TextAnimator extends StatefulWidget {
  @override
  _TextAnimatorState createState() => _TextAnimatorState();
}

class _TextAnimatorState extends State<TextAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);

    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            setState(() {
              controller.reverse();
            });
          } else if (status == AnimationStatus.dismissed) {
            setState(() {
              Future.delayed(Duration(milliseconds: 500), () {
                controller.forward();
              });
            });
          }
        },
      )
      ..addStatusListener((state) => print('$state'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Center(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 100,
                  child: Text(
                    animation.value == 0 ? 'ه' : 'ة',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 130),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 80,
                  child: Text(
                    animation.value == 0 ? 'ه' : 'ة',
                    style: TextStyle(color: Colors.white, fontSize: 130),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
