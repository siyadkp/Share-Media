import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:share_meadia/res/colors/colors.dart';

import '../widgets/app_bar/app_bar_widget.dart';
import '../widgets/connection_showing_widget/connections_showing_widget.dart';

class ScreenUserProfile extends StatelessWidget {
  const ScreenUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(55), child: AppBarWidget(title: 'Profile',profileView: false,)),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(color: KColors.blueGrey,borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 40,
                backgroundImage: AssetImage(
              'assets/UserProfile.jpg',
            ),),
              const Text('Muhammad siyad',style: TextStyle(color:Colors.white,fontSize: 20),),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              UserConnectionWidget(title: 'Followers'),
                  UserConnectionWidget(title: 'Following'),
              
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(width: 120, child: ElevatedButton(onPressed: (){}, child: const Text('Follow',style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(const Color.fromARGB(255, 10, 131, 223)), ),)),
              const SizedBox(width: 20,),
               SizedBox(width: 130, child: ElevatedButton(onPressed: (){}, child: const Text('Message',style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(const Color.fromARGB(255, 10, 131, 223)), ),)),
            ],)
        ],
      ),
      ),
    ),
    );
  }
}
