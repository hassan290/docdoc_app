import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/presentation/widgets/notification_bell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Hassan!',
              style: TTextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: TTextStyles.font11GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        const NotificationBell()
      ],
    );
  }
}
