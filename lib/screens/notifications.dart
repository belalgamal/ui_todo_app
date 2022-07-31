import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          elevation: 0,  
          title: const Text("Notification",
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
        children: [
Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child:   Row(
  
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
  
    children:const [
  
    Text("Dinner with Anna",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
  
  
    Text("20 Sep 2021 08:00 PM",
  
    style:TextStyle(
  
      color:Color(0XFF828282),
  
      fontSize: 12,
  
    ) ,),
  
  ],),
),
  
Container(
  height:1,
  color:const Color(0XFF828282),
),

Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child:   Row(
  
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
  
    children:const [
  
    Text("Pay House Tax",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
    Text("26 Sep 2021 08:00 AM",
  
    style:TextStyle(
  
      color:Color(0XFF828282),
  
      fontSize: 12,
  
    ) ,),
  
  ],),
),   
Container(
  height:1,
  color:const Color(0XFF828282),
),

Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child:   Row(
  
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
  
    children:const [
  
    Text("Make A New Proposal",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
    Text("26 Sep 2021 10:00 AM",
  
    style:TextStyle(
  
      color:Color(0XFF828282),
  
      fontSize: 12,
  
    ) ,),
  
  ],),
),   
Container(
  height:1,
  color:const Color(0XFF828282),
),

Container(
  margin: const EdgeInsets.symmetric(vertical: 10),
  child:   Row(
  
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
  
    children:const [
  
    Text("Meeting With A New Client",
  
    style:TextStyle(
  
      color:Colors.white,
  
      fontSize: 16,
  
    ) ,),
  
    Text("28 Sep 2021 10:00 AM",
  
    style:TextStyle(
  
      color:Color(0XFF828282),
  
      fontSize: 12,
  
    ) ,),
  
  ],),
),   
Container(
  height:1,
  color:const Color(0XFF828282),
),
       ],),
        ),
      ),
    );
  }
}