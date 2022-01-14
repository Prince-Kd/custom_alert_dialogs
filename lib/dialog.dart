import 'package:custom_alert_dialogs/action.dart';
import 'package:custom_alert_dialogs/dialog_details.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  String? title;
  String? content;
  String? type;
  AlertAction? action1;
  AlertAction? action2;

  CustomDialog(
      {Key? key,
      this.title,
      this.content,
      this.type,
      this.action1,
      this.action2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DialogDetails details = DialogDetails(
        context: context,
        title: title!,
        type: type,
        content: content,
        action1: action1,
        action2: action2);
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      //insetPadding: const EdgeInsets.all(40),
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 55, right: 20, bottom: 20),
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  details.title!,
                  style: TextStyle(
                    color: details.titleColor(),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  details.content!,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                details.actionButtons()
              ],
            ),
          ),
          Positioned(
              right: 20,
              left: 20,
              child: Align(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: details.icon()
                ),
              )),
        ],
      ),
    );
  }
}
