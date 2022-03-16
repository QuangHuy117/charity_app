// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height * 0.9,
            width: size.width,
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.06, vertical: size.height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Help',
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFF209FA6)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.09,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B2441)),
                        )),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * 0.06),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade300)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade300)),
                            label: Padding(
                              padding: EdgeInsets.only(left: size.width * 0.01),
                              child: Text('Your Email'),
                            ),
                            // labelText: "Your Email",
                            floatingLabelStyle: TextStyle(
                              fontSize: 22,
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF209FA6).withOpacity(0.6)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // hintText: "Your Email",
                            // hintStyle: TextStyle(
                            //     fontWeight: FontWeight.w700,
                            //     color: Color(0xFF209FA6).withOpacity(0.4))
                          ),
                        )),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF209FA6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      'or continue with',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFF209FA6).withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.logo_apple,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              'Sign in with Apple',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.logo_google,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              'Sign in with Google',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have Account?',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF209FA6).withOpacity(0.4),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => SignInPage()),
                              // );
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF209FA6),
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
