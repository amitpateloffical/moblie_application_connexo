import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EvaluationPage extends StatelessWidget {
  const EvaluationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'QA Elevation Comment  ',
            hint: 'QA Elevation Comment',
            menditry: true,
          ),
          AppTextField(
            title: ' QA Evaluation Attachments   ',
            hint: 'Attachment  ',
            menditry: true,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Training Information",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          AppTextField(
            title: 'Training Required  ',
            hint: 'Training Required',
            menditry: true,
          ),
          AppTextField(
            title: 'Training Comments ',
            hint: 'Comment',
            menditry: true,
          ),

          Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Save",

                ),
              ),
              Container(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Next",

                ),
              ),
              Container(
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
