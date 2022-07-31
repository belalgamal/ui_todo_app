import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   Cards({Key? key, required this.headText, required this.text1, required this.text2, required this.text3, required this.color, required this.cardColor,this.icon, required this.colorWidthLine}) : super(key: key);
final String headText,text1,text2,text3;
final Color color,cardColor,colorWidthLine;
final IconData ?icon;
  @override
  Widget build(BuildContext context) {
    return Card(
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                            Text(headText,
                            style:TextStyle(color:color,fontSize: 14) ,),
                            Container(
                              decoration: BoxDecoration(
                          border: Border.all(
                          width: 1.2,
                          color: color,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(4))
                          ),
                         child: Icon(icon,
                                color:color,
                                size:14,)),
                          ],),
                         Container(
                          margin:const EdgeInsets.symmetric(vertical: 8),
                          color:colorWidthLine, 
                          
                          width:double.infinity,
                          height: 2,
                         ),
                       Text(text1,style:TextStyle(color:color,fontSize: 12 ),),
                       Text(text2,style:TextStyle(color:color,fontSize: 12 ),),
                       Text(text3,style:TextStyle(color:color,fontSize: 12 ),),
                        ]),
                      )
                      ,
                      color: cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                      ),);
  }
}