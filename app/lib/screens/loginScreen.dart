import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/colors.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: darkBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 5),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 60,
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: _UsernameController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xff535353),
                        ),
                      ),
                      hintText: "Phone number, email or username",
                      hintStyle: TextStyle(
                          fontSize: 13,
                          color: secondaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: _PasswordController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xff535353),
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: secondaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      flex:5,
                      child: SizedBox(),
                    ),
                    Text("Forget Password?",
                        style: TextStyle(
                          color: primaryColor,
                        ))
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () =>
                      {Navigator.of(context).pushNamed(MyRoutes.LandingRoute)},
                  child: Container(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    width: double.infinity,
                    height: 42,
                    alignment: Alignment.center,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        color: primaryColor),
                  ),
                ),
                Spacer(flex: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account ? ",
                      style: TextStyle(color: secondaryColor),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: primaryColor),
                      ),
                    )
                  ],
                ),
                Spacer(flex: 2)
              ],
            ),),
      ),
    ),
    );
  }
}
