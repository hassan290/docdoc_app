import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Doctor Speciality',style: TTextStyles.font18DarkBlueBold,),
        Text('See All',style: TTextStyles.font12BlueRegular,)
      ],
    );
  }
}