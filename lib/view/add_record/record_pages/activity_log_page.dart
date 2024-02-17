import 'package:connexo/base/base.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActivityLogPage extends StatelessWidget {
  const ActivityLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Electronic Signatures',
            style: context.textTheme.titleMedium,
          ),
          const Divider(
            color: Colors.blueAccent,
          ),
          Table(
            children: [
              TableRow(children: [
                Text(
                  'Submitted By:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  'Shaleen Mishra',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
              TableRow(children: [
                Text(
                  'Submitted On:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  '15 Jan, 2023 11:00 PM',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
              TableRow(children: [
                Text(
                  'Cancelled By:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  'Shaleen Mishra',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
              TableRow(children: [
                Text(
                  'Cancelled On:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  '15 Jan, 2023 11:00 PM',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
              TableRow(children: [
                Text(
                  'More Information Required By:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  'Shaleen Mishra',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
              TableRow(children: [
                Text(
                  'More Information Required On:',
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  '15 Jan, 2023 11:00 PM',
                  style: context.textTheme.bodyLarge,
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
