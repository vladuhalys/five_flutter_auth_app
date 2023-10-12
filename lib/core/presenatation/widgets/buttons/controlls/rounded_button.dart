import 'package:five_flutter_auth_app/core/internal/theme/theme.dart';
import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  const AppRoundedButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.rounded,
        child: child);
  }
}
