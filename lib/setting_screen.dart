import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Close App'),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
