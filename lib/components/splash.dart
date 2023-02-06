import 'package:flutter/material.dart';

import 'package:project_android/screens/auth/login.dart';
import 'package:project_android/screens/home/home.dart';
import 'package:project_android/widgets/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // Check User
  @override
  void initState() {
    _checkUserSementara(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(context),
    );
  }

  /// inisialisasi cek user
  void _checkUserSementara(bool user) async {
    await Future.delayed(Duration(seconds: 2));

    //Check User
    wPushReplaceTo(context, user ? HomePage() : Login());
  }
}
