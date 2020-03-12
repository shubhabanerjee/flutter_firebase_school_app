import 'package:flutter/material.dart';
import 'package:schoolapp/widgets/daily_notice.dart';
import 'package:schoolapp/widgets/message.dart';


class Drw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new ListTile(
              title: new Text("Announcement"),
              trailing: Icon(Icons.announcement),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              }),
          new ListTile(
              title: new Text("Daily Notices "),
              trailing: Icon(Icons.notification_important),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dnotice()),
                );
              }),
          Divider(),
        ],
      ),
    );
  }
}
