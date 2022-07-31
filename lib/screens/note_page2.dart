import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
class NotePage2 extends StatefulWidget {
  const NotePage2({Key? key}) : super(key: key);

  @override
  State<NotePage2> createState() => _NotePage2State();
}



class _NotePage2State extends State<NotePage2> {
  final TextEditingController _controller=TextEditingController(text:"this morning's meeting we have to improve\nthe quality of office facilities and another...");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                appBar:AppBar(
          elevation: 0,
          backgroundColor:const Color(0xff7E64FF),
          actions: [
                     Padding(
                       padding: const EdgeInsets.only(right:15.0),
                       child:  Row(
               children:  [
               Transform.rotate(
                   angle:45 * math.pi/180,
                   child:const Icon(Icons.push_pin,
                     color:Colors.white,
                     size:24,
                                 
                      ),
                 ),
                const SizedBox(
              width: 24,
             ),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child:Stack(
                                children: [
                  Positioned(
                      child: SvgPicture.asset("images/vector4.svg"),
                      top: 2.2857143878936768,
                      left: 9.523809432983398,
                      ),
                  Positioned(
                      child: SvgPicture.asset("images/vector4.svg"),
                      top: 9.904762268066406,
                      left: 9.523809432983398,
                      ),
                  Positioned(
                      child: SvgPicture.asset("images/vector4.svg"),
                      top: 17.5238094329834,
                      left: 9.523809432983398,
                      ),
                        
                              ]),
                            ),
               ],
             ),
                     ),
        ]),
        body:Container(
          padding:const EdgeInsets.only(left: 20),
          height:MediaQuery.of(context).size.height,
           decoration:const BoxDecoration(
                      color: Color(0xff7E64FF),
                      ),
       child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
      const Text("Title",style: TextStyle(color:Colors.white,fontSize: 16),),
         TextField(
          maxLines: 5,
    controller: _controller,
          style:const  TextStyle(color:Colors.white,
                      fontSize: 16),
          decoration:const InputDecoration(
            hintText: "Your Text",
            hintStyle:TextStyle(
              color:Color.fromARGB(188, 255, 255, 255),
              fontSize: 16,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
           enabledBorder:OutlineInputBorder(
            borderSide:BorderSide.none ,
           ) ,
          ),
        ),
       ]),
        ),
      ),
    );
  }
}