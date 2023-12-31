import 'package:app/utils/colors.dart';
import 'package:app/widgets/post.dart';
import 'package:app/widgets/story.dart';
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
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 35,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 26,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: const Row(
                      children: [
                        Story(
                          img:
                              'https://img.freepik.com/free-photo/handsome-bearded-guy-posing-against-white-wall_273609-20597.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703894400&semt=sph',
                          username: 'Piyush',
                        ),
                        Story(
                          img:
                              'https://www.theladders.com/wp-content/uploads/man_outside_091318.jpg',
                          username: 'Decosa',
                        ),
                        Story(
                          img:
                              'https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg',
                          username: 'Mark',
                        ),
                        Story(
                          img:
                              'https://i.guim.co.uk/img/media/a4380f1eb23ed62a7fa287aaaac2216beed08b12/0_0_3024_4032/master/3024.jpg?width=445&dpr=1&s=none',
                          username: 'Eliana',
                        ),
                        Story(
                          img:
                              'https://www.lovepanky.com/wp-content/uploads/2017/12/Flirty-Things-to-Say-to-a-Girl-1.jpg',
                          username: 'Katherian',
                        ),
                      ],
                    )),
              ),
              const Divider(thickness: 0.2, color: secondaryColor),
              //first post component
              Post(
                  userImg:
                      'https://img.freepik.com/free-photo/handsome-bearded-guy-posing-against-white-wall_273609-20597.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703894400&semt=sph',
                  userName: 'Piyush Singh',
                  postImg: 'assets/images/post1.png',
                  title: 'Switzerland',
                  likes: 3200,
                  desc:
                      'Very Good Expierence in switzerland and see the view zzzzzzzzz',
                  date: "3 days ago"),
              //second post component
              Post(
                  userImg:
                      'https://www.lovepanky.com/wp-content/uploads/2017/12/Flirty-Things-to-Say-to-a-Girl-1.jpg',
                  userName: 'Katherian',
                  postImg: 'assets/images/post2.jpg',
                  title: 'Japan',
                  likes: 2024,
                  desc:
                      'I went to Japan for the first time and see what I miss in my entire life',
                  date: "4 days ago"),
            ],
          ),
        )));
  }
}
