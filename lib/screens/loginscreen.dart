import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:y_and_r_chat/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String userEmail = '';
  String userPassword = '';

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate(); // 이해하기!!!!
    if(isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      child: Scaffold(
        backgroundColor: const Color(0xff091A2E),
        body: Stack(
        children : [
          Positioned(
              right: 0,
              top: 20,
              child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.exit_to_app_sharp,
                    size: 30,
                  ),
              )
          ),
          // 나가기 버튼
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
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty || !value.contains('@')) {
                                return "Please enter a valid email address.";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userEmail = value!;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white30,
                              // prefixIcon: Icon(Icons.email_outlined),
                              // prefixIconColor: Colors.grey,
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                fontSize: 17,
                                color: Colors.white70
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: const EdgeInsets.all(20.0)
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty || value.length < 6) {
                                return "Password must be at least 6 characters long.";
                              }
                              return null;
                            },
                            onSaved: (value){
                              userPassword = value!;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white30,
                                hintText: 'Password',
                                // prefixIcon: Icon(Icons.security_outlined),
                                // prefixIconColor: Colors.grey,
                                hintStyle: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white70
                                ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: const EdgeInsets.all(20.0)
                            ),
                          ),
                        ],
                      ),
                  ),
                  // 배경 및 텍스트폼 필드
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      child: const Text("Don't Have an Account?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const SignupScreen();
                        })
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height*0.62,
          //   right: 30,
          //   child: TextButton(
          //     child: const Text("Don't Have an Account?",
          //     style: TextStyle(
          //         fontSize: 15,
          //         color: Colors.white60
          //     ),
          //     ),
          //     onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context){
          //         return const SignupScreen();
          //       })
          //       );
          //     },
          // ),
          //
          // ),
          // 필드 밑의 텍스트
          Positioned(
            top: MediaQuery.of(context).size.height*0.72,
            right: 0,
            left: 0,
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    _tryValidation();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width-60,
                    padding: const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
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
                ),
                SizedBox(
                  height : MediaQuery.of(context).size.height*0.02,
                ),
                const Text(
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
          Positioned(
              top: MediaQuery.of(context).size.height*0.86,
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    TextButton.icon(
                        onPressed: (){

                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                            )
                          ),
                          backgroundColor: Colors.white30,
                          minimumSize: Size(MediaQuery.of(context).size.width/2-30, 60),
                        ),

                        icon: const Icon(
                          FontAwesomeIcons.google,
                          size: 25,
                          color: Colors.redAccent,
                        ),
                        label: const Text( " Google",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),
                        )
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextButton.icon(
                        onPressed: (){
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              )
                          ),
                          backgroundColor: Colors.white30,
                          minimumSize: Size(MediaQuery.of(context).size.width/2-30, 60),
                        ),

                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 25,
                          color: Colors.blueAccent,
                        ),
                        label: const Text( " Facebook",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                          ),
                        )
                    ),
                  ],
                ),
              )
          ),
        ],
        )
      ),
    );
  }
}

