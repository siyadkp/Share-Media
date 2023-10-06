import 'package:flutter/material.dart';
import 'package:share_meadia/res/colors/colors.dart';
import 'package:share_meadia/routes/route_generator.dart';

class AppBarWidget extends StatelessWidget {

  const AppBarWidget({super.key,required this.title,this.profileView = false});
  final String title;
  final bool profileView;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: KColors.blueGrey,
      title:Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
       !profileView ? GestureDetector(
          onTap: () => Navigator.pushNamed(context, RouteGenarator.userprofile),
          child: const CircleAvatar(
              backgroundImage: AssetImage(
            'assets/UserProfile.jpg',
          )),
        ) :const SizedBox(),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
