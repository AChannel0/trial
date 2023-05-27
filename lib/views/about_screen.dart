import 'package:flutter/material.dart';
import 'package:cereusfirebase/views/text_layout.dart';
import 'package:cereusfirebase/views/app_drawer.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 10, 19),
        title: Text(
          'Cereus',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: <Widget>[
            Image.asset('assets/logo.jpg'),
            TextLayout(),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
