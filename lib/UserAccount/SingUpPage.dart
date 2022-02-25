// ignore: file_names

import 'package:aoun/Widget/Colors.dart';
import 'package:aoun/Widget/Controller.dart';
import 'package:aoun/Widget/Icons.dart';
import 'package:aoun/Widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'LoggingPage.dart';

class SingUpPage extends StatefulWidget {
  SingUpPage({Key key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl,child:(
      Scaffold(
        body: Container(
          color: deepGreen,
         
          child: SingleChildScrollView(
            child: Center(
              child: Column(
              
                children: [
                  SizedBox(height: 80.h,),
                  
                  drowText(context, "انشاء حساب", 18,color: white),
                   SizedBox(height: 20.h),
                  drowContiner(700, double.infinity, 0, 0,white, 
                  
                  Padding(
                    padding:  EdgeInsets.only(left:20.w,right: 40.w,top:40.h),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Image(image: AssetImage("assets/image/logo.png"),height: 150.h,width: 150.w),
                        drowTextField(context, nameIcon, "اسم المستخدم",false, nameController, (val){}),
                        SizedBox(height: 10.h),
                        drowTextField(context, emailIcon, "البريد الالكتروني",false, emailController, (val){}),
                        SizedBox(height: 10.h),
                        drowTextField(context, passIcon, "كلمة المرور",true, passController, (val){}),
                        SizedBox(height: 10.h),
                        drowTextField(context, iDIcon, "رقم الهوية / الاقامة",true, iDController, (val){}),
                        SizedBox(height: 10.h),
                        drowTextField(context, phoneIcon, "رقم الجوال",false, phoneController, (val){}),
                        SizedBox(height: 10.h),
                        drowButtoms(context, "انشاء حساب", 12, white, (){},backgrounColor:deepGreen),
                        drowButtoms(context, "لديك حساب بالفعل؟ تسجيل الدخول", 12, deepGreen, (){
                          goTopageReplacement(context, LoggingPage());
                        },backgrounColor:white)
                        ],
                    ),
                  ),
                  topRight: 90,
                  blur:10,
                  spShadow:3
                  )
                ],
              ),
            ),
          ),
        )
   ) ),
    );
  }
}
