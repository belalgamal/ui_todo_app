import 'package:timeline_tile/timeline_tile.dart';

import 'package:flutter/material.dart';

import 'circle.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key, required this.number, required this.child, this.beforeLineStyle, required this.isFirst}) : super(key: key);
final String number;

final Widget child;
final LineStyle ?beforeLineStyle;
final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
                 padding: const EdgeInsets.only(left: 20,right: 3,top:0),
                 child:  TimelineTile(
            
            endChild:Row(
              children: [
                  const SizedBox(width:5,),
                  Expanded(
                    child: child
                  ),
              ],
            ),
            beforeLineStyle:beforeLineStyle!,
            afterLineStyle:const LineStyle(
              thickness: 4,
              color:Color.fromRGBO(126, 99, 255, 1),
            ),
            isFirst:isFirst,
            indicatorStyle:IndicatorStyle(color:Colors.amber,
            indicatorXY: 0.1,
           
            height: 33,
            width:33,
            indicator: CirclAvatar(number:number,),
           
            ) ,
  
),
               );
  }
}








