import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//Auth Title
Widget wAuthTitle(String title, String subtitle) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(subtitle),
      ],
    ),
  );
}

// Text Divider With Text
Widget wTextDivider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Divider(
          color: Colors.black45,
        )),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'OR CONNECT WITH',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.black45,
        )),
      ],
    ),
  );
}

///Sign in with Google
Widget wGoogleSignIn({onPressed}) {
  return Container(
    width: double.infinity,
    child: RaisedButton.icon(
      // Cara lain membuat curve border pada container
      shape: StadiumBorder(),
      icon: Icon(
        MdiIcons.google,
        size: 18,
        color: Colors.blue[700],
      ),
      label: Text('Google'),
      onPressed: onPressed,
    ),
  );
}

/// TextRegister
Widget wTextLink(String text, String title, {onTap}) {
  return Container(
    margin: EdgeInsets.only(top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: onTap,
        )
      ],
    ),
  );
}
