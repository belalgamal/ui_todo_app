import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  State<NewNote> createState() => _NewNoteState();
}



class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff7E64FF),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: Row(
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
          padding:const EdgeInsets.symmetric(horizontal:20,vertical: 20 ),
          height:MediaQuery.of(context).size.height,
           decoration:const BoxDecoration(
                      color: Color(0xff7E64FF),
                      ),
       child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children:const [
         Text("Title",style: TextStyle(color:Colors.white,fontSize: 16),),
          TextField(
          maxLines: 5,
          style:TextStyle(color:Colors.white,
                      fontSize: 16),
          decoration:InputDecoration(
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