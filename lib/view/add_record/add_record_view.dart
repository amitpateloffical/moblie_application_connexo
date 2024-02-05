import 'package:connexo/helpers/dialog_helper.dart';
import 'package:connexo/routes/app_routes.dart';
import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/base/base_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view_model/create_record_view_model.dart';

class AddRecordView extends BaseView<CreateRecordViewModel> {
  const AddRecordView({super.key});

  @override
  Widget build(BuildContext context, CreateRecordViewModel viewModel) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Select Site/Location'),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: AppElevatedButton(
            onTap: () {
              if (viewModel.selectedSite.isEmpty) {
                DialogHelper.showToast(message: 'Please select site/location');
                return;
              }
              context.push(AppRouter.selectProcess);
            },
            title: 'Select Process',
          ),
        ),
        body: SafeArea(
          child: ListView.separated(
            itemCount: viewModel.siteLocationList.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                  value: viewModel.siteLocationList[index],
                  title: Text(viewModel.siteLocationList[index]),
                  groupValue: viewModel.selectedSite,
                  onChanged: (String? value) {
                    viewModel.selectedSite = value ?? '';
                  });
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ));
  }
}
