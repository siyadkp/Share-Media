
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserConnectionWidget extends StatelessWidget {
  const UserConnectionWidget({
    super.key,required this.title
  });
final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 30,right: 30,bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const Text('32',style: TextStyle(color:Colors.white,fontSize: 30),),
          Text(title,style: const TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)
    
        ],
      ),
    );
  }
}