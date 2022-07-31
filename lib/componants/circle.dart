import 'package:flutter/material.dart';

class CirclAvatar extends StatelessWidget {
  const CirclAvatar({Key? key, required this.number}) : super(key: key);

final String number;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                                   radius:16,
                                   backgroundColor:const Color.fromRGBO(126, 99, 255, 1),
                                   child: CircleAvatar(
                                     radius:14,
                                     backgroundColor:const Color.fromRGBO(60, 31, 123, 1),
                                     child:Text(number,style:const TextStyle(
                                       color:Colors.white,
                                     ),),
                                   ),
                                 );
  }
}