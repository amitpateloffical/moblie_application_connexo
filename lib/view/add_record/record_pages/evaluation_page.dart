import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EvaluationPage extends StatelessWidget {
  const EvaluationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTextField(
            title: 'QA Elevation Comment  ',
            hint: 'QA Elevation Comment',
            menditry: true,
          ),
          const AppTextField(
            title: ' QA Evaluation Attachments   ',
            hint: 'Attachment  ',
            menditry: true,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "Training Information",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            ),
          ),
          const Divider(
            color: Colors.blue,
          ),
          const AppTextField(
            title: 'Training Required  ',
            hint: 'Training Required',
            menditry: true,
          ),
          const AppTextField(
            title: 'Training Comments ',
            hint: 'Comment',
            menditry: true,
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
