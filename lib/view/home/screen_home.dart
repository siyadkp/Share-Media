import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:share_meadia/res/colors/colors.dart';
import 'package:share_meadia/res/images/images.dart';
import 'package:share_meadia/view/widgets/app_bar/app_bar_widget.dart';

import '../widgets/user_post/user_post_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.black,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarWidget(
            title: 'Share Media',
          )),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            separatorBuilder: (context, index) => SizedBox(
              height: 2.h,
            ),
            itemBuilder: (context, index) {
             late int imageIndex;
              if(index%2==0){
                imageIndex=0;
              }else{
                imageIndex=1;
              }
             return UserPostWidget(image:KImages.listOfKImages[imageIndex]);},
            itemCount: 10,
          ),
          )
        ],
      ),
    );
  }
}
