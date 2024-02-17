import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppOutlineButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const AppOutlineButton({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onTap, style: OutlinedButton.styleFrom(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(context.width, 50),
        foregroundColor: context.theme.primaryColor
    ), child: Text(title ?? ''),);
  }
}
