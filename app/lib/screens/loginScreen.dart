import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SafeArea(
        child: Container(
          height:MediaQuery.of(context).size.height,
          color: Colors.black,
        ),
      )
    );
  }
}