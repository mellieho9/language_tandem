import 'package:flutter/material.dart';

class AddLanguageAlertBox extends StatefulWidget {
  const AddLanguageAlertBox({Key? key}) : super(key: key);

  @override
  State<AddLanguageAlertBox> createState() => _AddLanguageAlertBoxState();
}

class _AddLanguageAlertBoxState extends State<AddLanguageAlertBox> {
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Text('Add Language')

    );
  }
}
