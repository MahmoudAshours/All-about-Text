import 'package:flutter/material.dart';

class LoadingText extends StatefulWidget {
  @override
  _LoadingTextState createState() => _LoadingTextState();
}

class _LoadingTextState extends State<LoadingText>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Color _color = Colors.red;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.reverse) {
                setState(
                  () {
                    _color = Colors.black;
                  },
                );
              } else {
                setState(
                  () {
                    _color = Colors.blue;
                  },
                );
              }
            },
          )
          ..repeat();
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: animation,
        child: Text(
          'Loading',
          style: TextStyle(color: _color),
        ),
      ),
    );
  }
}
