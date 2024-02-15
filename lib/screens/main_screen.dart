import 'package:flutter/material.dart';
import 'package:y_and_r_chat/screens/loginscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(
          Colors.indigoAccent,
          BlendMode.overlay
      ),
      child: Container(
        decoration: const BoxDecoration(
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
                        const Text(
                          'Y & R',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RetroBoldy'
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.2,
                        ),
                        const Text(
                          'Learn Languages',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arlon'
                          ),
                        ),

                        const Text(
                          'From Content You',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontFamily: 'Arlon'
                          ),
                        ),
                        const Text(
                          'Love',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontFamily: 'Arlon'
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.03,
                        ),
                        Divider(
                          thickness: 0.5,
                          height: 1,
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey[100],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.03,
                        ),
                        const Text(
                          'The Fast, Fun and',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            //fontFamily: 'Aramis'
                          ),
                        ),
                        const Text(
                          'effective way to Learn',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                              fontWeight: FontWeight.w300,
                              //fontFamily: 'Aramis'
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.17,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.065,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Colors.transparent,
                                Colors.black,
                                Colors.transparent,
                              ],
                            ),
                          ),
                          child: TextButton(
                            child: const Text("Get Started For Free!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Arlon'
                            ),
                            ),
                            onPressed: (){

                            },

                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.011,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.065,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.8, 1),
                                  colors: <Color>[
                                    Colors.transparent,
                                    Colors.black,
                                    Colors.transparent,
                                  ],
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: TextButton(
                            child: const Text("I already have an account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Arlon'
                            ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              })
                              );
                            },
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
