import 'package:connexo/base/base.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:connexo/widgets/image_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/app_elevated_button.dart';

class GroupCommentPage extends StatelessWidget {
  const GroupCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CFT Feedback',
            style: context.textTheme.titleMedium,
          ),
          const Gap(20),
          const AppTextField(
            title: 'CFT Comments',
            lines: 3,
            hint: 'Write Here...',
          ),
          // This is tesssssttttt

          const Gap(10),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const ImageView.rect(image: '', width: 100, height: 100)),

          const Gap(10),

          const AppTextField(
            title: 'CFT  Attachment',
            lines: 3,
          ),

          const Gap(10),

          Text(
            'CFT Feedback',
            style: context.textTheme.titleMedium,
          ),

          const Gap(10),

          const AppTextField(
            title: 'QA Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'QA Head Designee Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Warehouse Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Engineering Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Instrumentation Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Validation Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Others Comments',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Group Comments',
          ),
          const Gap(10),
          const Text('Attachments'),
          const Gap(10),
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
