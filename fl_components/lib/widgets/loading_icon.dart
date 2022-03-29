import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';


class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle
      ),
      height: 60,
      width: 60,
      child: const CircularProgressIndicator.adaptive( backgroundColor: AppTheme.primary, ),
    );
  }
}