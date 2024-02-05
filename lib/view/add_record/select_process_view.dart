import 'package:connexo/base/base.dart';
import 'package:connexo/routes/app_routes.dart';
import 'package:connexo/view/add_record/create_record_view.dart';
import 'package:connexo/view_model/create_record_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectProcessView extends BaseView<CreateRecordViewModel> {
  const SelectProcessView({super.key});

  @override
  Widget build(BuildContext context, CreateRecordViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Process'),
      ),
      body: ListView.separated(
        itemCount: viewModel.processList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.ac_unit),
            onTap: () => context.push(AppRouter.createRecord),
            title: Text(viewModel.processList[index]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
