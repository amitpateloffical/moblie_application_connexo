import 'package:connexo/view/add_record/record_pages/my_chips_widget.dart';
import 'package:flutter/material.dart';

import '../../view_model/create_record_view_model.dart';
import '../../base/base_view.dart';

class CreateRecordView extends BaseView<CreateRecordViewModel> {
  const CreateRecordView({super.key});

  @override
  Widget build(BuildContext context, CreateRecordViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Record'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(flex: 1, child: MyChipsWidget()),
          Expanded(
            flex: 9,
            child: PageView.builder(
                itemCount: viewModel.options.length,
                itemBuilder: (context, index) {
                  return viewModel.pages[viewModel.selectedOptionIndex];
                }),
          )
        ],
      ),
    );
  }
}
