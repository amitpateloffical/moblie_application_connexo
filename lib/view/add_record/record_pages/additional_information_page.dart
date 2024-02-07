import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdditionalInformationPage extends StatelessWidget {
  const AdditionalInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'CFT Reviewer',
            hint: 'CFT Reviewer',
            menditry: true,
          ),
          AppTextField(
            title: 'CFT Reviewer Person ',
            hint: 'CFT Reviewer Person',
            menditry: true,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Concerned Information",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
                color: Colors.blue
            ),
            ),
          ),
          Divider(
            color: Colors.blue,
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
