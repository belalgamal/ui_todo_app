import 'dart:convert';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          elevation: 0,  
          title: const Text("Setting",
          style:TextStyle(fontSize: 16),
          ),
          backgroundColor:const Color.fromARGB(42, 42, 46, 1),
        ),
        backgroundColor:const Color(0xff272232),
        body:Container(
          padding:const EdgeInsets.symmetric(horizontal:15,vertical: 20 ),
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
           decoration:const BoxDecoration(
                      gradient:LinearGradient(
                       begin:Alignment.topCenter,
                       end:Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(42, 42, 46, 1),
                          Color.fromRGBO(31, 19, 56, 1),
                          Color.fromARGB(0, 0, 0, 1),
                        ],
                      ) ,),
       child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
         mainAxisAlignment:MainAxisAlignment.start,
        children: [
Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child:const Text("Notification",
  
  style:TextStyle(
  
    color:Colors.white,
  
    fontSize: 18,
  
  ) ,),
),
  
Container(
  height:1,
  color:const Color(0XFF828282),
),

Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child: Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
       const Text("Audio",
      
      style:TextStyle(
      
        color:Colors.white,
      
        fontSize: 16,
      
      ) ,),
      const SizedBox(height: 20,),
      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:const [
          Text("Notification bar",
          
          style:TextStyle(
          
            color:Colors.white,
          
            fontSize: 16,
          
          ) ,),
          Icon(Icons.toggle_off,color:Color(0xffCCC2FE),size: 40,),
        ],
      ),
      const SizedBox(height: 20,),
      const Text("Extra",
      
      style:TextStyle(
      
        color:Colors.white,
      
        fontSize: 16,
      
      ) ,),
    ],
  ),
),   
Container(
  height:1,
  color:const Color(0XFF828282),
),

Container(
  height: 60,

  margin: const EdgeInsets.symmetric(vertical: 10),
  child: Column(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
crossAxisAlignment:CrossAxisAlignment.start,
    children:const [
  
    Text("Help",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
    Text("About",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
  ],),
),   


   

       ],),
        ),
      ),
    );
  }
}