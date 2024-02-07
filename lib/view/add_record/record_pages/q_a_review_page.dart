import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QAReviewPage extends StatelessWidget {
  const QAReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppTextField(
            title: 'Type of chnage  ',
            hint: 'Type of chnage',
            menditry: true,
          ),
          AppTextField(
            title: ' QA review Comment   ',
            hint: 'QA review Comment  ',
            menditry: true,
          ),
          AppTextField(
            title: 'Related Other  ',
            hint: 'Related Other',
            menditry: true,
          ),
          AppTextField(
            title: 'QA Attachment ',
            hint: 'QA Attachment',
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
