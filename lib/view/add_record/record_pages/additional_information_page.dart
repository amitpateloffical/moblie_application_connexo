import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdditionalInformationPage extends StatelessWidget {
  const AdditionalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextField(
            title: 'CFT Reviewer',
            hint: 'CFT Reviewer',
            menditry: true,
          ),
          const AppTextField(
            title: 'CFT Reviewer Person ',
            hint: 'CFT Reviewer Person',
            menditry: true,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "Concerned Information",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          const Divider(
            color: Colors.blue,
          ),
          const Gap(20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Save",
                ),
              ),
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Next",
                ),
              ),
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Exit",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
