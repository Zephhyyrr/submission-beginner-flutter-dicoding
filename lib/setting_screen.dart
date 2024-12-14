import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Account Settings',
            style: theme.textTheme.titleMedium,
          ),
          trailing: Icon(Icons.account_circle),
          onTap: () {
            // Action on tap
          },
        ),
        ListTile(
          title: Text(
            'Privacy Settings',
            style: theme.textTheme.titleMedium,
          ),
          trailing: Icon(Icons.lock),
          onTap: () {
            // Action on tap
          },
        ),
        ListTile(
          title: Text(
            'Logout',
            style: theme.textTheme.titleMedium,
          ),
          trailing: Icon(Icons.exit_to_app),
          onTap: () {
            // Action on tap
          },
        ),
      ],
    );
  }
}
