import 'package:flutter/material.dart';

import '../../../commons/exporter.dart';

Future<String?> dialoguebox(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(
        'Log Out',
        style: getBoldStyle(fontSize: FontSize.s17, color: ColorManager.black),
      ),
      content: Text(
        'Are you sure you want logout?',
        style:
            getRegularStyle(fontSize: FontSize.s12, color: ColorManager.black),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('Logout'),
        ),
      ],
    ),
  );
}
