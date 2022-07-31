import 'package:entraining_p1/screens/menu.dart';
import 'package:entraining_p1/screens/note_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math'as math;




class NotePage extends StatefulWidget {
   const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        floatingActionButton:SizedBox(
          width: 48,
          height: 48,
          child: FloatingActionButton(
            onPressed:() {
                       Navigator.push(context, MaterialPageRoute<void>(
                       builder: (BuildContext context) => 
                       const Menu(),
                         ),);
            },                    
                                 backgroundColor:const Color.fromRGBO(126,100,255,1),
                                 child:const Icon(Icons.add,
                                                 
                                                  
                                                  ),
          
          ),
        ),
        backgroundColor:const Color(0xff272232),
        body: Column(
            children: [
              Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height*0.17,
                decoration:const BoxDecoration(
                  gradient:LinearGradient(
                   begin:Alignment.topCenter,
                   end:Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(58, 51, 114, 1),
                      Color.fromRGBO(58, 51, 114, 0),
                    ],
                  ) ,),
                  child: Padding(
                    padding: const EdgeInsets.only(right:16,left: 16,top:10,bottom: 10),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.033,right: MediaQuery.of(context).size.width*.033,top: MediaQuery.of(context).size.width*.01),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width:80,
                                  height:16,
                                child:SvgPicture.asset("images/on.time.svg"),),
                           Row(
                             children: [
                               SizedBox(
                                 width:24,
                                 height: 24,
                                 child:Stack(
                                   children: [
                                     Positioned(
                                         top: 21.33333396911621,
                                         left: 10.21331787109375,
                                       child:SvgPicture.asset("images/vector1.svg"),),
                                                        Positioned(
                                           top: 1.183333158493042,
                                           left: 2.0333471298217773,
                                       child:SvgPicture.asset("images/vector2.svg"),),
                                                             Positioned(
                                           top:0.6666666865348816,
                                           left:16.66666603088379,
                                       child:SvgPicture.asset("images/vector3.svg"),),                                  
                                   ],
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
                          
                            ],
                          ),
                        ),
               
            
                     Stack(
                       children: [
                         Container(
                           width:MediaQuery.of(context).size.width*0.72,
                           height: MediaQuery.of(context).size.height*0.055,
                           decoration:const BoxDecoration(
                             color: Color.fromRGBO(60, 31, 123, 1),
                             borderRadius:BorderRadius.all(Radius.circular(4)),
                           ),
                         ),
                      Positioned(
                         top: 4,
                         left: 4,
                        child:Container(
                          
                          width:MediaQuery.of(context).size.width*0.32,
                          height:MediaQuery.of(context).size.height*0.038,
                          decoration:const BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                            child:InkWell(
                               onTap:(){
                       Navigator.pop(context);
                        } ,
                              child: Text("Schedule",
                                                      style:GoogleFonts.nunito(
                              fontSize:16,
                              color:Colors.white,
                              fontWeight:FontWeight.normal,
                              height: 1.5,
                                                      ) ,),
                            )),
                          
                        ),),
                      Positioned(
                        top: 6,
                        right: 5,
                       child:Container(   
                          width:MediaQuery.of(context).size.width*0.32,
                          height:MediaQuery.of(context).size.height*0.039,
                          decoration:const BoxDecoration(
                            color: Color.fromRGBO(39, 36, 48, 1),
                            borderRadius:BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                            child: Text("Note",
                            style:GoogleFonts.nunito(
                              color:Colors.white,
                              fontSize: 16
                            ) ,),
                          ),
                        )),
                       ],
                     ),
            
                      ],
                    ),
                  ),
              ),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  const SizedBox(height: 12,),
                   const SizedBox(
        height: 32,
         child: TextField(
          decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search_sharp,
                  color: Colors.grey,
                  ),
                  contentPadding:EdgeInsets.only(top: 3,left: 10,bottom: 5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(),
                  ),
                  filled: true,
                  fillColor: Color(0xffCCC2FE),
                  hintText:"Search Note",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xff828282),
                  ),
          ),
      ),
       ),
      
                InkWell(
                   onTap:(){
                       Navigator.push(context, MaterialPageRoute<void>(
                       builder: (BuildContext context) => 
                       const NotePage2(),
                         ),);
                        } ,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                     decoration:const BoxDecoration(
                               color: Color(0xff7E64FF),
                               borderRadius:BorderRadius.all(Radius.circular(8)),
                             ),
                  child:Column(children: [
                    const Text("this morning's meeting we have to improve the\nquality of office facilities and another...\n\n",
                         style:TextStyle(color:Colors.white,
                         fontSize: 13),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:  [
                         const Text("28/10/2012",
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                         ),
                         ),
                         Transform.rotate(
                          angle:45 *math.pi/180 ,
                           child: const Icon(Icons.push_pin,
                           size: 12,
                           color: Colors.white,
                           ),
                         ),
                      ],),
                    ),
                  ]),
                  ),
                ),
                 Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                   decoration:const BoxDecoration(
                             color: Color(0xff7E64FF),
                             borderRadius:BorderRadius.all(Radius.circular(8)),
                           ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                   Text("need for this month:\n-clothes\n-snack...\n",
                       style:TextStyle(color:Colors.white,
                       fontSize: 13),
                  ),
                  Text("16/08/2013",
                       style:TextStyle(color:Colors.white,
                       fontSize: 12),
                  ),
                ]),
                ),
               
                                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                   decoration:const BoxDecoration(
                             color: Color(0xff7E64FF),
                             borderRadius:BorderRadius.all(Radius.circular(8)),
                           ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                   Text("Message from Liam:\nDon't forget to complete assignments on Tuesday\n",
                       style:TextStyle(color:Colors.white,
                       fontSize: 13),
                  ),
                  Text("15/08/2017",
                       style:TextStyle(color:Colors.white,
                       fontSize: 12),
                  ),
                ]),
                ),
                ],
              ),
            ),
          ],
          ),
        ),
      
      );
  }
}