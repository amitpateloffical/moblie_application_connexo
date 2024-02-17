import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AppEmptyWidget extends StatelessWidget {
  final String? text;
  const AppEmptyWidget({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie_jsons/empty_lottie.json', repeat: false),
          const SizedBox(
            height: 10,
          ),
          Text(
            text ??"No Data",
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}