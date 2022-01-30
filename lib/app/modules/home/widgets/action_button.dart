import 'package:flutter/material.dart';
import 'package:to_do_list/app/config/app_message.dart';

import '../../../config/app_theme.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final double circular;
  final Function()? onPressed;

  const ActionButton({
    Key? key,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    this.circular = 100,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Image.asset(
        AppMessage.appLogo,
        color: foregroundColor,
        height: 40,
      ),
      //child: Icon(icon, size: 30),
      elevation: 1,
      highlightElevation: 1,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      splashColor: AppTheme.transparentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(circular)),
    );
  }
}
