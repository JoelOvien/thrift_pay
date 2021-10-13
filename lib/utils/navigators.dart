import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigators {
  static routeReplace(BuildContext context, [Widget route]) {
    Navigator.of(context).pushReplacement(
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (_) {
                return route;
              },
            )
          : MaterialPageRoute(
              builder: (_) {
                return route;
              },
            ),
    );
  }

  static route(BuildContext context, [Widget route]) {
    Navigator.of(context).push(
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (_) {
                return route;
              },
            )
          : MaterialPageRoute(
              builder: (_) {
                return route;
              },
            ),
    );
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}

// AppNavigators contextNavigators = AppNavigators();
