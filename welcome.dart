import 'package:flutter/material.dart';

class welcomewidget extends StatefulWidget {
  const welcomewidget({Key? key}) : super(key: key);

  @override
  _welcomewidgetState createState() => _welcomewidgetState();
}

class _welcomewidgetState extends State<welcomewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/iglogo.png")),
    );
  }
}
