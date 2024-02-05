import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class GeneralOptionsPage extends StatelessWidget {
  const GeneralOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Record Number',
            hint: 'Record Number',
            menditry: true,
          )
        ],
      ),
    );
  }
}
