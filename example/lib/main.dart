import 'package:custom_dialog/custom_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomDialog(),
    );
  }
}

class CustomDialog extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
}
class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Dialog"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                showDialog(context: context,
                    builder: (BuildContext context) {
                      return CustomDialogBox(
                        title: "Alert",
                        descriptions: "Custom Alert Dialog Box!!!",
                        text: "Yes",
                      );
                    }
                );
              },
              child: Text("Custom Dialog"),
            ),
          ),
        ),
      ),
    );
  }
}

