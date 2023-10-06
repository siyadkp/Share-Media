import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:share_meadia/res/colors/colors.dart';
import 'package:share_meadia/routes/route_generator.dart';
import '../widgets/buttons/buttons.dart';
import '../widgets/heading2/heading2_widget.dart';
import '../widgets/textformfield/textformfield_widget.dart';

class ScreenRegister extends StatefulWidget {
  const ScreenRegister({super.key});

  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}

class _ScreenRegisterState extends State<ScreenRegister> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey,
      child: Scaffold(
        backgroundColor: KColors.blueGrey,
        appBar:
            PreferredSize(preferredSize: Size.fromHeight(5.h), child: AppBar(backgroundColor: KColors.blueGrey,)),
        body: ListView(
          children: [
            HeadingStyleTwo(
                title: 'Register',
                subTitle: 'Create your new account',
                titleFontSize: 6.w,
                subTitleFontSize: 3.5.w),
            SizedBox(
              height: 2.h,
            ),
            const TextFormFiledWidget(
                title: 'Username', hintText: 'Enter your username'),
            const TextFormFiledWidget(
              title: 'Email',
              hintText: 'Enter your email',
            ),
            const TextFormFiledWidget(
              title: 'Phone',
              hintText: 'Enter your phone number',
            ),
            const TextFormFiledWidget(
              title: 'Password',
              hintText: 'Enter your password',
            ),
            const TextFormFiledWidget(
              title: 'Confirm password',
              hintText: 'Enter your Confirm password',
            ),
            SizedBox(
              height: 4.h,
            ),
            Buttons.inlineButton(() {
              Navigator.pushNamedAndRemoveUntil(context, RouteGenarator.home,(route) => false,);
            }, 'Create Account'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 3.w,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(142, 255, 255, 255)),
                ),
                TextButton(
                    onPressed: () => Navigator.popAndPushNamed(context,RouteGenarator.login),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 3.2.w,
                          fontWeight: FontWeight.w600,
                          color: KColors.blue),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
