import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChangeDetailPage extends StatelessWidget {
  const ChangeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Current Practice ',
            hint: 'Current Practice',
            menditry: true,
          ),
          AppTextField(
            title: 'Proposed Changge ',
            hint: 'Proposed Changge ',
            menditry: true,
          ),
          AppTextField(
            title: 'Reason of change  ',
            hint: 'Reason of change',
            menditry: true,
          ),
          AppTextField(
            title: 'Any other comment   ',
            hint: 'Any other comment ',
            menditry: true,
          ),
          AppTextField(
            title: 'Supervisor Comment   ',
            hint: 'Supervisor Comment',
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
