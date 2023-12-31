import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
   const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackground,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: darkBackground,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal:5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/logo.png'),height: 35,),
              Expanded(child: SizedBox()),
              Icon(Icons.favorite_outline,color: Colors.white,size: 26,),
              SizedBox(width:10),
              Icon(Icons.message_rounded,color: Colors.white,size: 26,),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            
          ),
        ) 
      
      )
    );
  }
}