import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:share_meadia/res/colors/colors.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget(
      {super.key,
      required this.title,
      required this.hintText,
      this.forgotPasswordEnable = false});

  final String title;
  final String hintText;
  final bool forgotPasswordEnable;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            width: 85.w,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Color.fromARGB(142, 255, 255, 255)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color:
                        Colors.red, // Customize the color for the error border
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors
                        .red, // Customize the color for the focused error border
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
            ),
          ),
          forgotPasswordEnable
              ? SizedBox(
                  width: 85.w,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: TextStyle(fontSize: 3.2.w, color: KColors.blue),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
