import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:share_meadia/res/colors/colors.dart';
import '../../res/images/images.dart';
import '../../routes/route_generator.dart';
import '../widgets/buttons/buttons.dart';
import '../widgets/continue_with/continue_with_widget.dart';
import '../widgets/textformfield/textformfield_widget.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: KColors.blueGrey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(5.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: KColors.blueGrey,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Welcome back',
                  style: TextStyle(
                      fontSize: 8.w,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Login in to your account',
                style: TextStyle(fontSize: 4.w, color: Colors.blueGrey[100]),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const TextFormFiledWidget(
                title: 'Email', hintText: 'Enter your email'),
            const TextFormFiledWidget(
                title: 'Password',
                hintText: 'Enter your password',
                forgotPasswordEnable: true),
            Buttons.inlineButton(() {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            }, 'Sign in'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you a new User?',
                  style: TextStyle(
                      fontSize: 3.w,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(142, 255, 255, 255)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteGenarator.register);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 3.2.w,
                          fontWeight: FontWeight.w600,
                          color: KColors.blue),
                    )),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25.w,
                  height: 1,
                  color: Colors.grey[400],
                ),
                const Text(
                  ' Or continue with ',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                Container(
                  width: 25.w,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            SignInWithWidget.continueWith(
                logo: KImages.googleIcon,
                title: 'Continue with Google',
                outline: true),
            SignInWithWidget.continueWith(
                logo: KImages.appleIcon,
                title: 'Continue with Apple',
                outline: false),
          ],
        ),
      ),
    );
  }
}
