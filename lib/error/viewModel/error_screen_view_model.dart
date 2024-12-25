import 'package:flutter/material.dart';

class ErrorScreenViewModel extends ChangeNotifier {

  ErrorScreenViewModel(): super();

  void dismiss(BuildContext context) {
    if(!context.mounted) return;

    Navigator.of(context).pop();
  }
}