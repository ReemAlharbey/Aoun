

import 'package:aoun/Widget/Colors.dart';
import 'package:aoun/Widget/Icons.dart';
import 'package:aoun/Widget/image.dart';
import 'package:aoun/Widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(welcomImage,
            
            ),
            fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
              children: [
 //الشعار-------------------------------------------------           
                SizedBox(height: 50.h,),
                CircleAvatar(
                  radius:60,
                  backgroundImage: AssetImage(logo),
                  backgroundColor: deepGreen,
                  
                ),
                SizedBox(height: 30.h,),
//نص الترحيب-------------------------------------------------           

              drowText(context, "مرحبا بكم في تطبيق عون", 27, color: white),
              
//نص الوصف-------------------------------------------------           

                SizedBox(height: 170.h,),
               
// ازرار اللغه-------------------------------------------------           

              SizedBox(
                width: 200.w,
                child: langButtom(context,icon: langIcon))
              
              ],
              ),
            ),
          ),
        ));
  }
}
