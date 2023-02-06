import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_android/widgets/widget_auth.dart';

import 'package:project_android/widgets/widgets.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _email = TextEditingController();
  bool _isLoading = false;

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(
          hintText: 'Email',
          helperText: 'Enter Your Email',
        ),
      ),
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
      ///Context
      context,

      ///Title
      'Send Request',
      onPressed: () {
        _loginSementara();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading(context)
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              resizeToAvoidBottomInset: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    wAuthTitle(
                      'Forgot Password',
                      'Enter Your Email and We\'ll send you a link\n to reset your password',
                    ),
                    _inputEmail(),
                    SizedBox(
                      height: 30,
                    ),
                    _inputSubmit(),
                  ],
                ),
              ),
            ),
    );
  }

  void _loginSementara() async {
    if (_email.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      print("Berhasil");
      await Future.delayed(Duration(seconds: 2));
      wShowToast(
          msg: 'Email Sended! Please Check Your Email to Reset your Password');
      Navigator.pop(context);
    } else {
      print("Gagal");
    }
  }
}
