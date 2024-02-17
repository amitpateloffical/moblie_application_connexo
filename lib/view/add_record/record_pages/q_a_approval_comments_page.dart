import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/app_elevated_button.dart';
import '../../../widgets/image_view.dart';

class QAApprovalCommentsPage extends StatelessWidget {
  const QAApprovalCommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'QA Approval Comments',
            hint: 'QA Approval Comments',
          ),
          Gap(10),
          AppTextField(
            title: 'Training Feedback',
            hint: 'Training Feedback',
          ),
          Gap(10),
          Text(
            'Training Attachments',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(10),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const ImageView.rect(image: '', width: 100, height: 100)),
          const Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Save",
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Next",
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 100,
                child: AppElevatedButton(
                  backgroundColor: Colors.blue,
                  title: "Exit",
                  onTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
