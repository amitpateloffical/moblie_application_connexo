import 'package:connexo/base/base.dart';
import 'package:connexo/widgets/app_dropdown_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../widgets/app_elevated_button.dart';

class RiskAssessmentPage extends StatelessWidget {
  const RiskAssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Risk Assessment',
            style: context.textTheme.titleMedium,
          ),
          const Gap(20),
          const AppTextField(
            title: 'Risk Identification',
            hint: 'Risk Identification',
          ),
          const Gap(10),
          AppDropdownButton(
            value: 'Negligible',
            onChanged: (String? value) {},
            items: const [
              DropdownMenuItem<String>(
                value: 'Negligible',
                child: Text('Negligible'),
              ),
              DropdownMenuItem<String>(
                value: 'Moderate',
                child: Text('Moderate'),
              ),
              DropdownMenuItem<String>(
                child: Text('Major'),
                value: 'Major',
              ),
              DropdownMenuItem<String>(
                child: Text('Fatal'),
                value: 'Fatal',
              ),
            ],
            title: 'Severity Rate',
          ),
          Gap(10),
          AppTextField(
            title: 'Occurrence',
            hint: 'Occurrence',
          ),
          Gap(10),
          AppDropdownButton(
            value: 'Negligible',
            onChanged: (String? value) {},
            items: ['Impossible', 'Rare', 'Unlikely', 'Likely', 'Very Likely']
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            title: 'Severity Rate',
          ),
          Gap(10),
          const AppTextField(
            title: 'Risk Evaluation',
            hint: 'Risk Evaluation',
          ),
          const Gap(10),
          const AppTextField(
            title: 'Migration Action',
            hint: 'Migration Action',
          ),
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
