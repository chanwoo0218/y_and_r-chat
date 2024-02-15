import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:y_and_r_chat/screens/loginscreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  String userName = '';
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
                    child: SingleChildScrollView(
                      child: Column(      //singlechildscrollview 넣기 : 빨간줄이 나오면 키보드가 가려짐
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
                            height: MediaQuery.of(context).size.height*0.03,
                          ),
                          // const Text(
                          //   'Before Login,',
                          //   style: TextStyle(
                          //       fontSize: 35,
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.bold,
                          //       fontFamily: 'RetroBoldy'
                          //   ),
                          // ),
                          const Text(
                            'Signup Screen',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RetroBoldy'
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.12,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (value){
                                    if(value!.isEmpty || value.length < 4) {
                                      return "Please enter at least 4 characters.";
                                    }
                                    return null;
                                  },
                                  onSaved: (value){
                                    userName = value!;
                                  },
                                  decoration: InputDecoration(
                                      filled: true,
                                      prefixIcon: Icon(Icons.person_2_outlined),
                                      prefixIconColor: Colors.limeAccent,
                                      fillColor: Colors.white30,
                                      hintText: 'Username',
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
                                      prefixIcon: Icon(Icons.email_outlined),
                                      prefixIconColor: Colors.limeAccent,
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
                                      return "Password must be at lease 6 characters long.";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    userPassword = value!;
                                  },
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white30,
                                      prefixIcon: const Icon(Icons.security_outlined),
                                      prefixIconColor: Colors.limeAccent,
                                      hintText: 'Password',
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
                        ],
                      ),
                    ),
                  )
              ),

              Positioned(
                top: MediaQuery.of(context).size.height*0.77,
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
                        //height: MediaQuery.of(context).size.height*0.085,
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          heightFactor: 0.7,
                          child: Text("Signup",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height : MediaQuery.of(context).size.height*0.001,
                    ),
                    TextButton(
                      child: const Text(
                        "Go to Login",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    )

                  ],
                ),
              ),
              // 로그인
            ],
          )
      ),
    );
  }
}

