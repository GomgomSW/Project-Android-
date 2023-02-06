import 'package:flutter/material.dart';
import 'package:project_android/screens/auth/forget_password.dart';
import 'package:project_android/screens/auth/register.dart';
import 'package:project_android/screens/home/home.dart';
import 'package:project_android/widgets/widget_auth.dart';
import 'package:project_android/widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _authTitle() {
    return wAuthTitle(
      /// Title
      'Login',

      /// Subtitle
      'Enter Your Email & Password',
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextFormField(
        controller: _email,
        decoration: InputDecoration(
          hintText: 'Email',
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'Please Enter Your Email';
          }
        },
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextFormField(
            controller: _password,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Please Enter Your Password';
              }
            },
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey),
            onPressed: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
        )
      ],
    );
  }

  Widget _forgetPassword() {
    return GestureDetector(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Text('Forget Password ?'),
          ),
        ),
        onTap: () => wPushTo(context, ForgetPassword()));
  }

  Widget _inputSubmit() {
    return wInputSubmit(
      ///Context
      context,

      ///Title
      'Login',
      onPressed: () {
        _loginSementara();
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

  Widget _textRegister() {
    return wTextLink(
      'Dont have an Account ?',
      'Register',
      onTap: () => wPushReplaceTo(context, Register()),
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _authTitle(),
                      _inputEmail(),
                      _inputPassword(),
                      _forgetPassword(),
                      _inputSubmit(),
                      _textDivider(),
                      _googleSignIn(),
                      _textRegister(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  void _loginSementara() async {
    if (_formKey.currentState!.validate()) {
      if (_email.text == 'sondaman@gmail.com' && _password.text == '123123') {
        setState(() {
          _isLoading = true;
        });
        await Future.delayed(Duration(seconds: 2));
        //Inisialisasi Cek User
        wPushReplaceTo(context, HomePage());
      } else {
        print("Fail");
      }
    }
  }
}
