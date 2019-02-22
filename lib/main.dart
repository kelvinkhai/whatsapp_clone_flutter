import 'package:flutter/material.dart';

import 'package:whatsapp_clone_flutter/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp Cone",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}