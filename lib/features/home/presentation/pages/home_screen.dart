import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctors_blue_container.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctors_list_view.dart';
import 'package:doctor_app/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(16.h),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorSpecialitySeeAll(),
              verticalSpace(16),
              const DoctorSpecialityListView(),
              verticalSpace(24.h),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}