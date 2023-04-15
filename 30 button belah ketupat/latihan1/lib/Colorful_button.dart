import 'dart:html';

import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor;
  @override
  State<ColorfulButton> createState() =>
      _ColorfulButtonState(mainColor, secondColor);
  ColorfulButton(this.mainColor, this.secondColor);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color mainColor, scondColor;
  _ColorfulButtonState(this.mainColor, this.scondColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        isPressed = !isPressed;
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  child: Icon(
                    Icons.adb,
                    color: Colors.white,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5)),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30, -30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, -30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
