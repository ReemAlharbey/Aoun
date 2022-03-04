import 'package:aoun/TransilatClass/getTranselaitData.dart';
import 'package:aoun/UserAccount/LoggingPage.dart';
import 'package:aoun/Widget/Colors.dart';
import 'package:aoun/Widget/Controller.dart';
import 'package:aoun/Widget/Icons.dart';
import 'package:aoun/Widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class requestWheelchar extends StatefulWidget {
  requestWheelchar({Key key}) : super(key: key);

  @override
  State<requestWheelchar> createState() => _requestWheelcharState();
}

class _requestWheelcharState extends State<requestWheelchar> {
  List<String> item=["يدون مساعد","مساعد"];
   List<String> chair=["1","2","3"];
  TimeOfDay selectedstarTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
              child: SingleChildScrollView(
                child: Column(
                
                  children: [
                    SizedBox(height: 80.h,),
                    
                    drowText(context, "طلب كرسي متحرك", 18,color: deepGreen),
                     SizedBox(height: 10.h),
                    Padding(
                      padding:  EdgeInsets.only(left:20.w,right: 20.w,top:40.h),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Image(image: AssetImage("assets/image/logo.png"),height: 150.h,width: 150.w),
                         drowMenu("نوع الطلب",requestType,item),
                          SizedBox(height: 10.h),
                         drowMenu("عدد الكراسي",chairNumber,chair),
                          SizedBox(height: 10.h),
                          drowTextField(context, starTime,"زمن الاستلام",true, passController, (val){},onTap: (){
                             _selectStarTime(context);
                          }),
                          SizedBox(height: 10.h),
                          drowTextField(context, endTime,"زمن الارجاع",true, passController, (val){},onTap: (){
                            _selectStarTime(context);
                          }),
                          SizedBox(height: 10.h),
                        
                          drowButtoms(context,"رفع الطلب", 12, white, (){},backgrounColor:deepGreen),
                          
                          ],
                      ),
                    ),
                    
                    
                   
                    
                  ],
                ),
              )));
  }
  // show clock----------------------------------------------------
   _selectStarTime(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedstarTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null) {
      setState(() {
        selectedstarTime = timeOfDay;
       
      });
    }
  }
}
