import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
            child: Column(
              children: [
                // SvgPicture.asset('assets/icons/general_speciality.svg',width: 48.w,height: 48.h,),
                CircleAvatar(radius: 24.r,backgroundColor: TColors.lightWhite,child: SvgPicture.asset('assets/icons/general_speciality.svg',width: 48.w,height: 48.h,),),
                verticalSpace(12),
                Text('General',style: TTextStyles.font12DarkBlueRegular,),
              ],
            ),
          );
        },
      ),
    );
  }
}