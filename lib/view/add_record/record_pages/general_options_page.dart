import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GeneralOptionsPage extends StatelessWidget {
  const GeneralOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            title: 'Record Number',
            hint: 'Record Number',
            menditry: true,
          ),
          AppTextField(
            title: 'Indicator ',
            hint: 'Indicator name',
            menditry: true,
          ),
          AppTextField(
            title: 'Assigned To ',
            hint: 'Indicator name',
            menditry: true,
          ),
          AppTextField(
            title: 'Division Code  ',
            hint: 'Division',
            menditry: true,
          ),
          AppTextField(
            title: 'Date of Initation  ',
            hint: 'Date',
            menditry: true,
          ),
          AppTextField(
            title: 'Expected date of Completion ',
            hint: 'Date',
            menditry: true,
          ),
          AppTextField(
            title: 'Initator Group Code ',
            hint: 'Code',
            menditry: true,
          ),

          AppTextField(
            title: 'Initator Group  ',
            hint: 'Indicator name',
            menditry: true,
          ),
          AppTextField(
            title: 'Short Description  ',
            hint: 'Enter Description',
            menditry: true,
          ),
          AppTextField(
            title: 'Short Description  ',
            hint: 'Enter Description',
            menditry: true,
          ),
          AppTextField(
            title: 'Severity Level  ',
            hint: 'Severity Level ',
            menditry: true,
          ),
          AppTextField(
            title: 'Innitated Through  ',
            hint: '',
            menditry: true,
          ),
          AppTextField(
            title: 'Other   ',
            hint: 'Other info',
            menditry: true,
          ),
          AppTextField(
            title: 'Repeat   ',
            hint: 'Repeat',
            menditry: true,
          ),
          AppTextField(
            title: 'Repeat Nature   ',
            hint: 'Repeat nature',
            menditry: true,
          ),
          AppTextField(
            title: ' Nature of Change  ',
            hint: 'Nature of change',
            menditry: true,
          ),
          AppTextField(
            title: ' if Other  ',
            hint: 'Other info',
            menditry: true,
          ),
          AppTextField(
            title: 'Devision Code ',
            hint: 'Other info',
            menditry: true,
          ),
          AppTextField(
            title: 'Initial attachment ',
            hint: 'attachment',
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
