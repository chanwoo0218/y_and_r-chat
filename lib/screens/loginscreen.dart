import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff091A2E),
      body: Stack(
      children : [
        Positioned(
          right: 0,
          left: 0,
          top: 80,
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Y & R',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RetroBoldy'
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.07,
                ),
                const Text(
                  'Login to',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RetroBoldy'
                  ),
                ),
                const Text(
                  'Your Account',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RetroBoldy'
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.07,
                ),
                Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white30,
                            hintText: 'Username or Email',
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.white70
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: EdgeInsets.all(20.0)
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white30,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white70
                              ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: EdgeInsets.all(20.0)
                          ),
                        ),
                      ],
                    ),
                ),
                // 배경 및 텍스트폼 필드
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
              ],
            ),
          )
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.64,
          right: 30,
          child: const Text("Forgot your password?",
          style: TextStyle(
              fontSize: 15,
              color: Colors.white
          ),
        ),
          // 필드 밑의 텍스트
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.71,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width-60,
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height : MediaQuery.of(context).size.height*0.02,
              ),
              Text(
                "or log in with",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white
                ),
              )
            ],
          ),
        ),
        // 로그인
      ],
      )
    );
  }
}

