import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:fluttertoast/fluttertoast.dart';

/// Widget Loading Applikasi
Widget wAppLoading(BuildContext context) {
  return Container(
    color: Theme.of(context).scaffoldBackgroundColor,
    child: Center(
      child: Platform.isIOS
          ? CupertinoActivityIndicator()
          : CircularProgressIndicator(),
    ),
  );
}

//Navigator Push
Future wPushTo(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

//Navigator Push Replace
Future wPushReplaceTo(BuildContext context, Widget widget) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

///Submit Button
Widget wInputSubmit(BuildContext context, String title, {onPressed}) {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      shape: StadiumBorder(),
      child: Text(title),
      onPressed: onPressed,
    ),
  );
}

Future wShowToast({required String msg}) {
  return Fluttertoast.showToast(
    msg: msg,
    backgroundColor: Colors.black54,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
  );
}
