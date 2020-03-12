//import 'package:firebase_auth/firebase_auth.dart';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/services/auth.dart';
import 'package:schoolapp/widgets/carouselslider.dart';
import 'package:schoolapp/widgets/draver.dart';
//import 'package:schoolapp/services/auth_provider.dart';

class HomePage extends StatelessWidget {
//  HomePage({@required this.auth});
//
////  final VoidCallback onSignOut;
//  final AuthBase auth;

  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context , listen: false);
      await auth.signOut();
//      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home page "),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () => _signOut(context),
          )
        ],
      ),
      drawer: Drw(),
      body: new ListView(
        children: <Widget>[
          CSlider(),
          FlatButton(
            padding: EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                "Developed by Devenger's Group",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              color: Colors.black26,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
