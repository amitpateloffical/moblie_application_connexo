import 'package:connexo/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_empty_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Edit Profile',
              style: context.textTheme.titleMedium,
            ),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Change Password',
              style: context.textTheme.titleMedium,
            ),
            leading: const Icon(Icons.lock),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Privcy Policy',
              style: context.textTheme.titleMedium,
            ),
            leading: Icon(Icons.policy),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Terms and condition',
              style: context.textTheme.titleMedium,
            ),
            leading: Icon(Icons.file_copy),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text(
              'About Us',
              style: context.textTheme.titleMedium,
            ),
            leading: Icon(Icons.search),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
        ],
      ),
    );
  }
}
