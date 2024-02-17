import 'package:connexo/base/base.dart';
import 'package:connexo/widgets/app_dropdown_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/app_elevated_button.dart';
import '../../../widgets/image_view.dart';

class ChangeClosurePage extends StatelessWidget {
  const ChangeClosurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Affected Documents',
                style: context.textTheme.titleMedium,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        weight: 5,
                        color: Colors.white,
                      )))
            ],
          ),
          Gap(20),
          AppTextField(
            title: 'QA Closure Comments',
            hint: 'QA Closure Comments',
          ),
          Gap(10),
          Text(
            'List Of Attachments',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(10),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const ImageView.rect(image: '', width: 100, height: 100)),
          Gap(20),
          Text(
            'Effectiveness Check Details',
            style: context.textTheme.titleMedium,
          ),
          Gap(20),
          AppDropdownButton(
            items: ['Yes', 'No']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            title: 'Effectivess Check Required?',
            onChanged: (String? value) {},
          ),
          Gap(10),
          AppTextField(
            title: 'Effectiveness Check Creation Date',
            hint: 'Select Date',
            readOnly: true,
            onTap: () {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100));
            },
          ),
          Gap(10),
          AppTextField(
            title: 'Effectiveness Checker',
            hint: 'Effectiveness Checker',
          ),
          Gap(10),
          AppTextField(
            title: 'Effectiveness Check Plan',
            hint: 'Effectiveness Check Plan',
          ),
          Gap(20),
          Text(
            'Extension Justification',
            style: context.textTheme.titleMedium,
          ),
          Gap(20),
          AppTextField(
            lines: 3,
            title: 'Due Date Extension Justification',
            hint: 'Please Mention justification if due date is crossed',
          ),
          Gap(20),
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
