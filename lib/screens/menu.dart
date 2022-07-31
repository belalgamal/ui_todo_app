import 'package:entraining_p1/screens/new_schedule.dart';
import 'package:entraining_p1/screens/note_page3.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        spaceBetweenChildren: 20,
        buttonSize:const Size(48,48),
        childrenButtonSize:const Size(48,48),
        overlayOpacity: 0,
       icon:Icons.add,
       activeIcon:Icons.close,
        backgroundColor:const Color(0xff7E64FF),
        children: [
          SpeedDialChild(
            onTap: ((){
                Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) => const NewSchedule(),
            ),);
            }),
           labelShadow: [const BoxShadow(color: Color(0xff0a0a23),)] ,
            labelBackgroundColor:const Color(0xff0a0a23),
            backgroundColor: const Color(0xff7E64FF),
                   child:const Icon(Icons.calendar_month_sharp,
                   color:Colors.white ,),
            label: "Schedule",
            labelStyle:const TextStyle(color:Colors.white),
          ),
           SpeedDialChild(
             onTap: ((){
                 Navigator.push(context, MaterialPageRoute<void>(
                 builder: (BuildContext context) => const NewNote(),
            ),);
            }),
            labelShadow: [const BoxShadow(color: Color(0xff0a0a23),)] ,
            labelBackgroundColor:const Color(0xff0a0a23),
            backgroundColor: const Color(0xff7E64FF),
            child: Transform.rotate(
                        angle:90*math.pi/180 ,
                   child:const Icon(Icons.note,
                   color: Colors.white,
                   )),
            label: "Note",
            labelStyle:const TextStyle(color:Colors.white),
          ),
        ],
      ),
     
      body: Container(
        height:MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
           color: const Color(0xff0a0a23),
      ),
    ) ;
  }
}