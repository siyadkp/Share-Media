import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SignInWithWidget {
  static continueWith({required String logo, required String title,required bool outline}) =>
      Center(
          child: Padding(
        padding:  EdgeInsets.only(bottom: 3.5.h),
        child: SizedBox(
            width:65.w,
            height: 13.w,
            child: ElevatedButton(
                onPressed: () {},
               style: outline ? OutlinedButton.styleFrom(
        side: const BorderSide(width: 1.0,color: Color.fromARGB(255, 215, 215, 215)),
        
      )
               : ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      logo,
                      width: 35,
                    ),
                    const SizedBox(width: 10,),
                    Text(title,style: TextStyle(color:outline ?Colors.black : Colors.white),)
                  ],
                ))),
      ));
}