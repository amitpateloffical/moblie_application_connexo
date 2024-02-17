import 'package:flutter/material.dart';
import 'package:connexo/base/base.dart';

class AppElevatedButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  final Color? backgroundColor;
  const AppElevatedButton(
      {super.key, this.title, this.onTap, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? context.theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size(150, 50),
          foregroundColor: context.theme.cardColor),
      child: Text(
        title ?? '',
      ),
    );
  }
}
