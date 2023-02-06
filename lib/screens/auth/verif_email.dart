

import 'package:flutter/material.dart';

class VerifEmail extends StatefulWidget {
  const VerifEmail({Key? key}) : super(key: key);

  @override
  _VerifEmailState createState() => _VerifEmailState();
}

class _VerifEmailState extends State<VerifEmail> {
  bool _isLoading = false;
  bool _isSendedd = false;

  Widget _resendEmailButton() {
    return Column(
      children: <Widget>[
        Text('Didn\'t receive an email ?'),
        FlatButton(
          child: Text(_isLoading ? 'Sending' : 'Resend'),
          onPressed: () async {
            setState(() => _isLoading = true);

            await Future.delayed(Duration(seconds: 2));

            setState(() {
              _isLoading = false;
              _isSendedd = true;
            });
          },
        )
      ],
    );
  }

  Widget _bottomWidget() {
    return _isSendedd ? _resendEmailMsg() : _resendEmailButton();
  }

  Widget _resendEmailMsg() {
    return Container(
      child: Text(
        'Email Sended !',
        style: TextStyle(color: Colors.green),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //Responsive Swipe

      height: MediaQuery.of(context).size.height / 1.2,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(10),
            child: Icon(Icons.drag_handle),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.alternate_email,
                  size: 50,
                ),
                SizedBox(height: 20),
                Text(
                  'Verify Your Email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'We Have sended an email with a confrirmation link\n to your email address',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Divider(
                  height: 40,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black45,
                ),
                Text(
                  'Click on the Button to verify the registration process',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Divider(
                  height: 40,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black45,
                ),
                _bottomWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
