import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Toast {
  static void success(BuildContext context, {String title, String message}) {
    Flushbar(
      title: title,
      message: message,
      // messageText: Text(),
      backgroundColor: Colors.green,
      flushbarPosition: FlushbarPosition.BOTTOM,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      // icon: Icon(Icons.add),
      mainButton: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      duration: const Duration(seconds: 3),
    ).show(context);
  }

  static void neutral(BuildContext context, {String title = '', String message = ''}) {
    Flushbar(
      title: title,
      message: message,
      backgroundColor: Colors.grey,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      mainButton: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      duration: const Duration(seconds: 3),
    ).show(context);
  }

  static void error(BuildContext context, {String title, String message}) {
    Flushbar(
      title: title,
      message: message,
      backgroundColor: Colors.red,
      flushbarPosition: FlushbarPosition.BOTTOM,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      mainButton: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      duration: const Duration(seconds: 3),
    ).show(context);
  }
}
