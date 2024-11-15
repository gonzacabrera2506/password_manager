import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? action;
  final Widget child;
  final ButtonStyle? style;
  const CustomElevatedButton(
      {super.key, this.action, required this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action ?? () {},
      child: child,
      style: style,
    );
  }
}
