import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 167.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/container_background.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TTextStyles.font18WhiteMedium,
                ),
                verticalSpace(16),
                Expanded(
                  child: AppTextButton(
                      buttonText: 'Find Nearby',
                      textStyle: TTextStyles.font12BlueRegular,
                      buttonWidth: 110.w,
                      backgroundColor: Colors.white,
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 16,
            child: Image.asset('assets/images/nurse.png',width: 136.w,height: 197.h,),
          ),
        ],  
      ),
    );
  }
}
