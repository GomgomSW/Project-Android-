import 'package:flutter/material.dart';
import 'package:project_android/screens/auth/login.dart';
import 'package:project_android/screens/auth/verif_email.dart';
import 'package:project_android/widgets/widget_auth.dart';
import 'package:project_android/widgets/widgets.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _passwordConf = TextEditingController();

  bool _isLoading = false;
  bool _obscureText = true;
  Widget _authTitle() {
    return wAuthTitle(
      /// Title
      'Register',

      /// Subtitle
      'Fill the form to Register',
    );
  }

  Widget _inputName() {
    return Container(
      child: TextField(
        controller: _name,
        decoration: InputDecoration(
          hintText: 'Name',
          helperText: 'Enter Your Full Name',
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(
          hintText: 'Email',
          helperText: 'Enter Email',
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: _password,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: '******',
              helperText: 'Enter Password',
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: TextField(
            controller: _passwordConf,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: '******',
              helperText: 'Confirm Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget _inputSubmit() {
    return wInputSubmit(
      ///Context
      context,

      ///Title
      'Register',
      onPressed: () {
        _registerSementara();
      },
    );
  }

  Widget _textDivider() {
    return wTextDivider();
  }

  Widget _googleSignIn() {
    return wGoogleSignIn(
      onPressed: () {},
    );
  }

  Widget _textLogin() {
    return wTextLink(
      'Already have an Account ?',
      'Login',
      onTap: () => wPushReplaceTo(context, Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: _isLoading
          ? wAppLoading(context)
          : Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      _authTitle(),
                      _inputName(),
                      _inputEmail(),
                      _inputPassword(),
                      SizedBox(height: 30),
                      _inputSubmit(),
                      _textDivider(),
                      _googleSignIn(),
                      _textLogin(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  void _registerSementara() async {
    print('Full Name : ${_name.text}');
    print('Email : ${_email.text}');
    print('Password : ${_password.text}');
    print('Confirm Password : ${_passwordConf.text}');

    setState(() => _isLoading = true);

    await Future.delayed(Duration(seconds: 2));

    wPushReplaceTo(context, Login());

    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return VerifEmail();
        });
  }
}
