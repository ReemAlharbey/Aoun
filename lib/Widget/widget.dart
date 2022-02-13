import 'package:aoun/SelectLangugePage/SelectLangModel.dart';
import 'package:aoun/TransilatClass/language.dart';
import 'package:aoun/Widget/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget drowText(context,String text,double fontSize, {family = "Cairo",Color color=Colors.white,
  align = TextAlign.right,
  double space = 0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Text(
    text,
    style: TextStyle(
          color: color,
          fontFamily: family,
          fontSize: fontSize.sp,
          letterSpacing: space.sp,
          fontWeight: fontWeight,
        ),
  );
}

//===============================drow continer===============================
Widget drowContiner(double height, double width, double marginL, double marginR,
    Color color, Widget child,
    {double blur = 0.0,
    Offset offset = Offset.zero,
    double spShadow = 0.0,
    double pL = 0.0,
    double pR = 0.0,
    double pT = 0.0,
    double pB = 0.0,
    double marginT = 0.0,
    double marginB = 0.0,
    double bottomLeft = 0.0,
    double topRight = 0.0,
    double topLeft = 0.0,
    double bottomRight = 0.0}) {
  return Container(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    width: width.w,
    height: height.h,
    margin: EdgeInsets.only(
        left: marginL.w, right: marginR.w, top: marginT.h, bottom: marginB.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeft),
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight)),
        color: color,
        boxShadow: [
          BoxShadow(blurRadius: blur, offset: offset, spreadRadius: spShadow)
        ]),
    child: child,
  );
}

//===============================drow continer with image===============================
Widget drowContinerImage(double height, double width,String image ,double marginL, double marginR,
    Color color, Widget child,
    {double blur = 0.0,
    Offset offset = Offset.zero,
    double spShadow = 0.0,
    double pL = 0.0,
    double pR = 0.0,
    double pT = 0.0,
    double pB = 0.0,
    double marginT = 0.0,
    double marginB = 0.0,
    double bottomLeft = 0.0,
    double topRight = 0.0,
    double topLeft = 0.0,
    double bottomRight = 0.0}) {
  return Container(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    width: width.w,
    height: height.h,
    margin: EdgeInsets.only(
        left: marginL.w, right: marginR.w, top: marginT.h, bottom: marginB.h),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image)),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeft),
            topRight: Radius.circular(topRight),
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight)),
        color: color,
        boxShadow: [
          BoxShadow(blurRadius: blur, offset: offset, spreadRadius: spShadow)
        ]),
    child: child,
  );
}


//=================================Drow Buttoms=============================
Widget drowButtoms(context, String key, double fontSize, Color textColor, onPressed,
    {Color backgrounColor = Colors.transparent,
    double horizontal = 0.0,
    double vertical = 0.0,
    double evaluation = 0.0}) {
  return SizedBox(
    height: 45.h,
    child: TextButton(
      onPressed: onPressed,
      child: drowText(context, key, fontSize,
      color: textColor
      ),
      style: ButtonStyle(
        
        elevation: MaterialStateProperty.all(evaluation),
        backgroundColor: MaterialStateProperty.all(backgrounColor),
        foregroundColor: MaterialStateProperty.all(textColor),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h)),
      ),
    ),
  );
}

//===============================Go To page(push)===============================
goTopagepush(context, pageName) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => pageName));
}

//===============================Go To page(pushReplacement)===============================
goTopageReplacement(context, pageName) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => pageName));
}


//get heghit and width===============================================================
Size getSize(context) {
  return MediaQuery.of(context).size;
}

//=============================Drow TextFields=================================
Widget drowTextField(
  context,
  icons,
  String key,
  //double fontSize,
  bool hintPass,
  TextEditingController mycontroller,
  myvali,
  {Widget suffixIcon,void Function() onTap}
) {
  return TextFormField(
    obscureText: hintPass,
    validator: myvali,
    onTap: onTap,
    controller: mycontroller,
    style: TextStyle(color: deepGreen, fontSize: 12.sp),
    decoration: InputDecoration(
        isDense: true,
        filled: true,
        suffixIcon:suffixIcon,
        hintStyle: TextStyle(color:deepGreen, fontSize: 12.sp),
        fillColor: gray,
        labelStyle: TextStyle(color: deepGreen, fontSize: 12.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        prefixIcon: Icon(icons, color: deepGreen, size: 25.sp),
        hintText: key,
        contentPadding: EdgeInsets.all(10.h)),
  );
}

//===========================DropMenu Buttom==============================
Widget selectLangButtom(context,{ IconData icon}) {
  return DropdownButton(
    elevation: 20,
    dropdownColor: gray,
    underline: SizedBox(),
    iconSize: 35.sp,
    
    icon: Icon(icon, color: black),
    
    items: Language.languageList()
        .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
              value: lang,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  
                  Text(lang.name)
                ],
              ),
            ))
        .toList(),
    onChanged: (Language lang) {
      newLang(lang, context);
    },
  );
}



