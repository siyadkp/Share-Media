import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Buttons {
  // Inline Button
  static inlineButton(Function onPressedFunction, String buttonText) =>
      Center(
        child: SizedBox(
          width: 80.w,
          height: 13.w,
          child: ElevatedButton(
              onPressed: () {
                onPressedFunction();
              },
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black),),
              child: Text(buttonText,style: TextStyle(color: Colors.white,fontSize: 4.w),),
              ),
        ),
      );


}

