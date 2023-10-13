import 'package:flutter/material.dart';
import 'package:five_flutter_auth_app/core/internal/theme/theme.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  late final Widget button;
  final Function onPressed;
  AppButton.rounded({super.key, required this.onPressed, required this.child}) {
    button = ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.rounded,
        child: child);
  }
  AppButton.roundedFill(
      {super.key, required this.onPressed, required this.child}) {
    button = ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.roundedFill,
        child: child);
  }
  AppButton.circle({super.key, required this.onPressed, required this.child}) {
    button = ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.circle,
        child: child);
  }
  AppButton.circleFlet(
      {super.key, required this.onPressed, required this.child}) {
    button = ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.circleFlet,
        child: child);
  }
  AppButton.circleFletDark(
      {super.key, required this.onPressed, required this.child}) {
    button = ElevatedButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.cirlceFletDark,
        child: child);
  }
  AppButton.textSmall(
      {super.key, required this.onPressed, required this.child}) {
    button = TextButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.textSmall,
        child: child);
  }
  AppButton.textLarge(
      {super.key, required this.onPressed, required this.child}) {
    button = TextButton(
        onPressed: () => onPressed.call(),
        style: AppButtonStyle.textLarge,
        child: child);
  }
  @override
  Widget build(BuildContext context) {
    return button;
  }
}
