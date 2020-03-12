import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'dart:async';

import 'package:provider/provider.dart';
import 'package:schoolapp/services/auth.dart';

//import 'package:schoolapp/services/auth.dart';
//import 'package:schoolapp/services/auth_provider.dart';



class SignInPage extends StatelessWidget {

//  SignInPage({@required this.auth, this.onSignIn});
//  final Function(User) onSignIn;
//  final AuthBase auth;

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
//      final auth = AuthProvider.of(context);
      final auth = Provider.of<AuthBase>(context, listen: false);

      await auth.signInAnonymously();
//      onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context , listen: false);
      await auth.signInWithGoogle();
//      onSignIn(user);
    } catch (e) {
      print(e.toString());
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: GoogleSignInButton(
                borderRadius: 12.0,
                darkMode: true,
                onPressed: ()=> _signInWithGoogle(context),
              ),
            ),
            FlatButton(
              onPressed: ()=> _signInAnonymously(context),
              child: Text("sign in"),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
