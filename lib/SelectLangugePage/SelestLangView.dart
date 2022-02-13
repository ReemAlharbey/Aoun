import 'package:aoun/Widget/Colors.dart';
import 'package:aoun/Widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectLangView extends StatefulWidget {
  SelectLangView({Key key}) : super(key: key);

  @override
  _SelectLangViewState createState() => _SelectLangViewState();
}

class _SelectLangViewState extends State<SelectLangView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: drowContiner(
            double.infinity, double.infinity, 0, 0, white, Text("")));
  }
}
