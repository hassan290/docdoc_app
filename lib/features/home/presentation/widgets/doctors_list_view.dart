import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r)
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    'assets/images/doctor.png',
                    height: 110.h,
                    width: 110.w,
                    fit: BoxFit.fill,
                  ),
                ),
                horizontalSpace(16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr. Randy Wigham',style: TTextStyles.font16DarkBluBlod,overflow: TextOverflow.ellipsis,),
                      verticalSpace(8),
                      Text('General | RSUD Gatot Subroto',style: TTextStyles.font12GrayRegular,),
                      verticalSpace(12),
                      Row(
                        children: [
                          Icon(Icons.star,size: 16.w,color: Colors.amber,),
                          horizontalSpace(4),
                          Text('4.8',style: TTextStyles.font12BlueRegular,),
                          horizontalSpace(4),
                          Text('(4,279 reviews)',style: TTextStyles.font12GrayRegular,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
