import 'package:flutter/material.dart';


class HeadingStyleTwo extends StatelessWidget {
   HeadingStyleTwo({
    super.key,required this.title,required this.subTitle,required this.titleFontSize,required this.subTitleFontSize
  });
   
  final String title;
  final String subTitle;
  final double titleFontSize;
  final double subTitleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(title,
              style:
                  TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold,color: Colors.white)),
        ),
Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
             subTitle,
              style: TextStyle(fontSize: subTitleFontSize, color: Colors.white),
            ),
          ),
      ],
    );
  }
}