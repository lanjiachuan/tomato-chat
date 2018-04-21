import 'package:flutter/material.dart';
import 'package:manipalchat/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Tomato Chat",
      theme: new ThemeData(
        primaryColor: new Color(0xff000000),
        accentColor: new Color(0xff000000),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}
