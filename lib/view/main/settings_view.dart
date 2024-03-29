import 'package:flutter/material.dart';
import 'package:connexo/base/base.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

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
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Change Password',
              style: context.textTheme.titleMedium,
            ),
            leading: const Icon(Icons.lock),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Privcy Policy',
              style: context.textTheme.titleMedium,
            ),
            leading: const Icon(Icons.policy),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Terms and condition',
              style: context.textTheme.titleMedium,
            ),
            leading: const Icon(Icons.file_copy),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'About Us',
              style: context.textTheme.titleMedium,
            ),
            leading: const Icon(Icons.search),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
