import 'package:custom_alert_dialogs/action.dart';
import 'package:custom_alert_dialogs/dialog.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic cancel(){
      return Navigator.pop(context);
    }
    void okay(){
      print('Okay baby!!');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('CUSTOM ALERT DIALOG'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    title: 'Warning',
                    content: 'Are you sure you want to log out?',
                    type: 'info',
                    action1: AlertAction(function: okay, text: 'NO'),
                    action2: AlertAction(function: cancel, text: 'YES'),
                  );
                });
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
