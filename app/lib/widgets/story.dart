import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String img;
  final String username; 
  const Story({Key? key,required this.img,required this.username}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20),
      child: Column(
        children:[ 
          CircleAvatar(
          radius: 40,
          backgroundColor: Color.fromARGB(255, 244, 10, 104),
          child: CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(img),
            
          ),
        ),
        Text(username,style:TextStyle(fontSize: 14,color:secondaryColor),),
      ]),
    );
  }
}
