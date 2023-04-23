import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebLoginScreen extends StatefulWidget {
  const WebLoginScreen({super.key});

  @override
  State<WebLoginScreen> createState() => _WebLoginScreenState();
}

class _WebLoginScreenState extends State<WebLoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1c1a23),
      body: Container(
        child: Row(children: [
          SizedBox(
            width: width * 0.5,
            height: height,
            child: Center(
              child: SvgPicture.asset("assets/images/logo-big.svg"),
            ),
          ),
          Container(
              color: Color(0xff282533),
              width: width * 0.5,
              height: height,
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Login to Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.05,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.35,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "UserName",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.02,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Enter username",
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.02,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Container(
                    width: width * 0.25,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xffefefef), width: 2),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 25,
                            offset: Offset(0, 4))
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff593ec4),
                          Color(0xff392689),
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
