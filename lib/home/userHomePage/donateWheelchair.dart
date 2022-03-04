import 'package:flutter/material.dart';

class donateWheelchar extends StatefulWidget {
  donateWheelchar({Key key}) : super(key: key);

  @override
  State<donateWheelchar> createState() => _donateWheelcharState();
}

class _donateWheelcharState extends State<donateWheelchar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text("التبرع بكرسي متحرك"),
      ),
    ));
  }
}
