import 'package:custom_alert_dialogs/dialog.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CUSTOM ALERT DIALOG'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context, builder: (context) {
              return const CustomDialog();
            });
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
