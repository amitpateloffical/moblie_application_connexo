import 'package:connexo/widgets/base_view_model.dart';
import 'package:flutter/material.dart';

import '../../../view_model/create_record_view_model.dart';
import '../../../widgets/base_view.dart';

class MyChipsWidget extends BaseView<CreateRecordViewModel> {
  const MyChipsWidget({super.key});

  @override
  Widget build(BuildContext context, CreateRecordViewModel viewModel) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.options.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ChoiceChip(
              label: Text(viewModel.options[index]),
              selected: viewModel.selectedOptionIndex == index,
              onSelected: (bool selected) {
                if (selected) {
                  viewModel.selectedOptionIndex = index;
                }
                // viewModel.selectedOptionIndex = selected ? index : 0;
              },
            ),
          );
        });
  }
}
