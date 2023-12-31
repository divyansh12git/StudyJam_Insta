import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String userName;
  final String title;
  final String desc;
  final String date;
  final int likes;
  final String postImg;
  final String userImg;
  const Post(
      {Key? key,
      required this.userImg,
      required this.userName,
      required this.postImg,
      required this.title,
      required this.likes,
      required this.desc,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(userImg),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )),
                            Text(title,
                                style: TextStyle(
                                    fontSize: 12, color: secondaryColor)),
                          ],
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image(
                      image: AssetImage(postImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.messenger_outline,
                          size: 22,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        // Transform(
                        //   transform: Matrix4.rotationZ(-0.4),
                        //   child: Icon(Icons.send_outlined, size:25,color: Colors.white,)),
                        Icon(
                          Icons.send_outlined,
                          size: 22,
                          color: Colors.white,
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.save_alt,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(likes.toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text(
                          desc,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(date,
                            style:
                                TextStyle(color: secondaryColor, fontSize: 10,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              );
  }
}
