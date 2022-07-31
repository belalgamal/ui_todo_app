import 'package:flutter/material.dart';

class SchedulePage4 extends StatefulWidget {
  const SchedulePage4({Key? key}) : super(key: key);

  @override
  State<SchedulePage4> createState() => _SchedulePage4State();
}

class _SchedulePage4State extends State<SchedulePage4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xff272232),
        appBar:AppBar(
          elevation: 0,
          backgroundColor:const Color.fromARGB(42, 42, 46, 1) ,
          actions:[
                     Padding(
                       padding: const EdgeInsets.only(right:15.0),
                       child: Row(
               children:const  [
                  Icon(Icons.check_box_outlined,color:Colors.white,size:24 ),
                SizedBox(
              width: 24,
             ),
              Icon(Icons.check,color:Colors.white,size:24 ),
               ],
             ),
                     ),
        ]),
        body:Container(
          padding:const EdgeInsets.symmetric(horizontal:15,vertical: 20 ),
          height:MediaQuery.of(context).size.height,
           decoration:const BoxDecoration(
                      gradient:LinearGradient(
                       begin:Alignment.topCenter,
                       end:Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(42, 42, 46, 1),
                          Color.fromRGBO(31, 18, 55, 1),
                          Color.fromARGB(0, 0, 0, 1),
                        ],
                      ) ,),
       child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
      const Text("Schedule",style: TextStyle(color:Colors.white,fontSize: 16),),
      const SizedBox(height: 24,),
      const SizedBox(
        height: 32,
         child: TextField(
          decoration: InputDecoration(
            contentPadding:EdgeInsets.only(top: 3,left: 10,bottom: 5),
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(),
            ),
            filled: true,
            fillColor: Color(0xffCCC2FE),
            hintText:"Meeting With Anomali Team",
            hintStyle: TextStyle(
              fontSize: 16,
            ),
          ),
      ),
       ),
      const SizedBox(height: 24,),
      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:const [
           Text("Fullday",style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          ),),
      Icon(Icons.toggle_off,color:Color(0xffCCC2FE),size: 40,),
        ],
      ),
      const SizedBox(height: 24,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
         const Text("Start from",style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          ),),
          Row(
            children:const [
              Text("Mon, 20 Sep 2021 07:00 AM  ",style:TextStyle(
                color:Color(0xff828282),
                fontSize: 12,
              ),),
              Icon(Icons.arrow_forward_ios,size: 12,color:Color(0xff828282),),
            ],
          ),
        ],
      ),
      const SizedBox(height: 24,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
         const Text("Finish",style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          ),),
          Row(
            children:const [
              Text("Mon, 20 Sep 2021 10:00 AM  ",style:TextStyle(
                color:Color(0xff828282),
                fontSize: 12,
              ),),
              Icon(Icons.arrow_forward_ios,size: 12,color:Color(0xff828282),),
            ],
          ),
        ],
      ),
      const SizedBox(height: 24,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
         const Text("Repeat",style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          ),),
          Row(
            children:const [
              Text("None  ",style:TextStyle(
                color:Color(0xff828282),
                fontSize: 12,
              ),),
              Icon(Icons.arrow_forward_ios,size: 12,color:Color(0xff828282),),
            ],
          ),
        ],
      ),
       const SizedBox(height: 24,),
         Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
         const Text("Reminder",style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          ),),
          Row(
            children:const [
              Text("Before 5 minutes  ",style:TextStyle(
                color:Color(0xff828282),
                fontSize: 12,
              ),),
              Icon(Icons.arrow_forward_ios,size: 12,color:Color(0xff828282),),
            ],
          ),
        ],
      ),
       const SizedBox(height: 24,),
       const SizedBox(
        height: 32,
         child: TextField(
          decoration: InputDecoration(
            contentPadding:EdgeInsets.only(top: 3,left: 10,bottom: 5),
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(),
            ),
            filled: true,
            fillColor: Color(0xffCCC2FE),
            hintText:"Anomali Office",
            hintStyle: TextStyle(
              fontSize: 16,
            ),
          ),
      ),
       ),
       const SizedBox(height: 24,),
       const SizedBox(
        height: 32,
         child: TextField(
          decoration: InputDecoration(
            contentPadding:EdgeInsets.only(top: 3,left: 10,bottom: 5),
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(),
            ),
            filled: true,
            fillColor: Color(0xffCCC2FE),
            hintText:"Nothing",
            hintStyle: TextStyle(
              fontSize: 16,
            ),
          ),
      ),
       ),
       ]),
        ),
      ),
    );
  }
}