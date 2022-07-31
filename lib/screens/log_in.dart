import 'package:entraining_p1/screens/notifications.dart';
import 'package:entraining_p1/screens/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatelessWidget{
  final String?title;
  const LogInPage({this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:MediaQuery.of(context).size.width,
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
    child: Column(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset("images/on.time.svg",
        height: 56,
        width: 279.0512390136719,
      ),
      Text("Make yourself\nmore on time ",style: GoogleFonts.openSans(
        color: Colors.white,
        fontWeight:FontWeight.normal,
        fontSize:36 ,
      ),),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => const SchedulePage(),
    ),);
        },
        child: Container(child: Center(
          child: Text("START",
          style:GoogleFonts.montserrat(
            color:const Color.fromRGBO(10, 4, 22, 1),
            fontSize: 24,
            fontWeight: FontWeight.normal,
          )),
        ),
          width:298 ,
          height:56 ,
        decoration:const BoxDecoration(
          color:Colors.white,
           borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        ),
      ),
      ],
      ),
      ),
    );
  }

} 