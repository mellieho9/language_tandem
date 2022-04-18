import 'package:flutter/material.dart';

class UserLanguageProficiency extends StatefulWidget {
  const UserLanguageProficiency({Key? key, required this.firstName}) : super(key: key);
  final String firstName;
  @override
  State<UserLanguageProficiency> createState() => _UserLanguageProficiencyState();
}

class _UserLanguageProficiencyState extends State<UserLanguageProficiency> {
  Future<void> _showMyDialog() asyncc {
    return showDialog<void>(
    context: context,
    barrierDismissible:  false,
    builder: (BuildContext context) {
      return AlertDialog(
      title: const Text ("Add Languages"),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget> [
            Text('This is a demo alert dialog.'),
            Text('Would you like to approve of this message?'),
      ],
    ),
  ),
    actions: <Widget> [
      TextButton[
        child: const Text ('Add')
        onPressed: () {
        Navigator.of(context).pop(),
    }
  ]
  ]
      )
  }
    )
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center (
        child: Container(
          padding: EdgeInsets.all(8,0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hi' + widget.firstName + "!", style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Tell us more about your language learning journey'),
                  const Text("Which languages are you familiar with")
                ]
            )
        );
    )
    floatingActionButton: FloatingActionButton.extended(onPressed: _showMyDialog(), label: Text('Add Language'))
  }
}
