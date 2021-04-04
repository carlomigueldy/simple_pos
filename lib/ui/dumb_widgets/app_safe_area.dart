import 'package:flutter/material.dart';

class AppSafeArea extends StatelessWidget {
  final Widget child;

  AppSafeArea({required this.child}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
