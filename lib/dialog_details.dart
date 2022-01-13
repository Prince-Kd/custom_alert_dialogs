import 'package:flutter/material.dart';
import 'package:custom_alert_dialogs/action.dart';

class DialogDetails {
  String? title;
  String? content = '';
  String? type = 'success';
  AlertAction? action1;
  AlertAction? action2;
  BuildContext context;
  void defaultAction() {
    Navigator.pop(context);
  }

  DialogDetails(
      {this.title,
      this.content = '',
      this.type = 'info',
      this.action1,
      this.action2,
      required this.context});

  List get actions {
    if (action1 == null && action2 == null) {
      return [AlertAction(function: defaultAction, text: 'OK')];
    } else {
      return [action1, action2];
    }
  }

  Widget icon() {
    switch (type) {
      case 'success':
        return const Icon(Icons.check_circle, color: Colors.green, size: 100);
      case 'error':
        return const Icon(Icons.error, color: Colors.red, size: 100);
      case 'info':
        return const Icon(Icons.info, color: Colors.amber, size: 100);
      default:
        return const Icon(Icons.info, color: Colors.amber, size: 100);
    }
  }

  Color titleColor() {
    switch (type) {
      case 'success':
        return Colors.green;
      case 'error':
        return Colors.red;
      case 'info':
        return Colors.amber;
      default:
        return Colors.amber;
    }
  }

  Widget actionButtons() {
    return Row(
      children: actions
          .map((action) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10)),
                      onPressed: action.function,
                      child: Text(
                        action.text,
                        style: const TextStyle(fontSize: 18),
                      )),
                ),
              ))
          .toList(),
    );
  }
}

