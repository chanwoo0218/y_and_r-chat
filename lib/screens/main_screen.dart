import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
          Colors.indigoAccent,
          BlendMode.overlay
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('img/background.jpg')
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Y & R',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RetroBoldy'
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                          'Learn Languages',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arlon'
                          ),
                        ),

                        Text(
                          'From Content You',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontFamily: 'Arlon'
                          ),
                        ),
                        Text(
                          'Love',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontFamily: 'Arlon'
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Divider(
                          thickness: 0.5,
                          height: 1,
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey[100],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'The Fast, Fun and',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            //fontFamily: 'Aramis'
                          ),
                        ),
                        Text(
                          'effective way to Learn',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                              fontWeight: FontWeight.w300,
                              //fontFamily: 'Aramis'
                          ),
                        ),

                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
