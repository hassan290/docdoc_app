import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: const Text('3'),
      showBadge: true,
      badgeStyle: const badges.BadgeStyle(
        badgeColor: TColors.notificationBell,
      ),
      position: badges.BadgePosition.topEnd(top: -10, end: -5),
      child: const Icon(
        FontAwesomeIcons.bell,
        size: 30,
      ),
    );
  }
}
