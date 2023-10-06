import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class KTextStyle{

static textStyle3 (String text1,String text2,double fontSize)=>Padding(
  padding:  EdgeInsets.only(bottom: 7,left:5.w),
  child:   Row(
    children: [
          SizedBox(width: 35.w, child: Text(text1,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500),)),
           Text(': ',style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500),),
            Text(text2,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500),),
        
    ],
  ),
);
}