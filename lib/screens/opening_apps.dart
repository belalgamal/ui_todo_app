import 'dart:async';

import 'package:entraining_p1/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OppeningPage extends StatefulWidget{
  final String?title;
  const OppeningPage({this.title,Key? key}) : super(key: key);

  @override
  State<OppeningPage> createState() => _OppeningPageState();
}

class _OppeningPageState extends State<OppeningPage> {
@override
  void initState() {
    super.initState();
Timer(const Duration(seconds: 3),(){
     Navigator.pushReplacement(context,
                MaterialPageRoute(builder:(BuildContext context) =>
                 const LogInPage()));
});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff2A2A2E),
              Color(0xff1F1338),
              Color(0xff000000),
            ],
            
          ),
    ),
    child: Center(
      child:SvgPicture.asset("images/on.time.svg",
      width: 199.32232666015625,
      height: 40,
      ),),
    ),
    );
  }
} 