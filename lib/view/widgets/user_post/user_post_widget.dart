import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';
import 'package:share_meadia/controller/home_provider/home_provider.dart';
import 'package:share_meadia/res/images/images.dart';

class UserPostWidget extends StatelessWidget {
  UserPostWidget({super.key, required this.image});
  final String image;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(KImages.profile)),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Muhammad siyad',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 29.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                10), // Same border radius as the Container
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Row(
          children: [
            Consumer<HomeNotifier>(builder: (context, homeNotifier, _) {
              return IconButton(
                onPressed: () {
                  isFav = !isFav;
                  homeNotifier.favorite();
                },
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              );
            }),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_bank_outlined,
                  color: Colors.yellow,
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.blue[900],
              ),
            )
          ],
        )
      ],
    );
  }
}
