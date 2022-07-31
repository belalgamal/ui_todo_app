import 'package:entraining_p1/componants/step.dart';
import 'package:entraining_p1/screens/menu.dart';
import 'package:entraining_p1/screens/note_page.dart';
import 'package:entraining_p1/screens/notifications.dart';
import 'package:entraining_p1/screens/schedule_page4.dart';
import 'package:entraining_p1/screens/schedule_page5.dart';
import 'package:entraining_p1/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../componants/cards.dart';




class SchedulePage extends StatefulWidget {
   const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
   DateTime focusedDay=DateTime(2021,9,1);
bool isEventLoader=true,isWeek=false;
CalendarFormat calendarFormate=CalendarFormat.month;
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
               builder: (BuildContext context) => const Menu(),
               ),);
            },
                                 
                                 backgroundColor:const Color.fromRGBO(126,100,255,1),
                                 child:const Icon(Icons.add,
                                                 
                                                  
                                                  ),
          
          ),
        ),
        backgroundColor:const Color(0xff272232),
        body: SingleChildScrollView(
          child: Column(
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
                                 InkWell(
                                  onTap: (){
                                Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) => 
                                const Notifications(),
                                  ),);
                                  },
                                   child: SizedBox(
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
                                 ),
                                 const SizedBox(
                                   width: 24,
                                 ),
                                  InkWell(
                                    onTap: (){
                                    Navigator.push(context, MaterialPageRoute<void>(
                                    builder: (BuildContext context) => 
                                    const Settings(),
                                      ),);
                                     },
                                    child: SizedBox(
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
                              color: Color.fromRGBO(39, 36, 48, 1),
                              borderRadius:BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Center(
                              child: Text("Schedule",
                            style:GoogleFonts.nunito(
                              fontSize:16,
                              color:Colors.white,
                              fontWeight:FontWeight.normal,
                              height: 1.5,
                            ) ,)),
                            
                          ),),
                        Positioned(
                          top: 6,
                          right: 49,
                          child:InkWell(
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) => 
                                const NotePage(),
                                  ),);
                            },
                            child: Text("Note",
                            style:GoogleFonts.nunito(
                              color:Colors.white,
                              fontSize: 16
                            ) ,),
                          )),
                         ],
                       ),
              
                        ],
                      ),
                    ),
                ),
            
             Padding(
              padding:const EdgeInsets.only(left: 25,right: 25),
              child:TableCalendar(
              onPageChanged: (focuseDay) => { 
                setState(() { 
                focusedDay=focuseDay;
                },)
                },
      calendarFormat: calendarFormate,
      onFormatChanged: (format) => {
        setState(() {
     calendarFormate=calendarFormate==CalendarFormat.month
     ?CalendarFormat.week
     :CalendarFormat.month;
         
        }),
       
        
      },
    sixWeekMonthsEnforced: true,


      eventLoader:isSameDay(focusedDay,DateTime(2021,10,1))
      ?null
      :(day) {
      
        if(isSameDay(day,DateTime(2021,9,26))|| isSameDay(day,DateTime(2021,9,28))){
       return ['uo'];}
       else {
          return [];
        }
     },


       rowHeight: 40,
       currentDay:DateTime(2021,9,20) ,
    daysOfWeekStyle:  DaysOfWeekStyle(
      dowTextFormatter:(date, locale) => DateFormat.E(locale).format(date).toUpperCase(),
     weekdayStyle : const TextStyle(
      color:Colors.white,fontSize: 16),
     weekendStyle:const TextStyle(color:Colors.redAccent,fontSize: 16,), 
    ),
      weekendDays: const [DateTime.sunday],
               headerStyle:HeaderStyle(
                headerPadding:const EdgeInsets.symmetric(vertical: 4),
                 titleTextStyle:const TextStyle(
                   color:Colors.white,
                   fontSize: 17,
                   fontFamily: 'Nunito',
                   fontWeight: FontWeight.normal,
                 ),
                 leftChevronIcon:const Icon(
   Icons.chevron_right,
   color: Color(0xff272232),
   size: 28,
 ),
 rightChevronIcon:const Icon(
   Icons.chevron_right,
   color: Color(0xff272232),
   size: 28,
 ),
                titleTextFormatter: (date, locale) => DateFormat.yMMMM(locale).format(date).toUpperCase(),
                 formatButtonVisible: false,
                 titleCentered: true,
               ),
               calendarStyle:const CalendarStyle(
                markerMargin:EdgeInsets.symmetric(vertical:24),
                markerSize: 30,
               canMarkersOverflow: false,
                markerDecoration:BoxDecoration(
                  shape:BoxShape.rectangle,
                  color:Colors.white,
                ),
                 defaultTextStyle: TextStyle(color:Colors.white),
                 weekendTextStyle:TextStyle(color:Colors.redAccent,),
                 todayTextStyle:TextStyle(color:Colors.black,) ,
                 todayDecoration: BoxDecoration(color:Colors.deepPurpleAccent, 
                 
                 shape: BoxShape.circle,
                 ),
               ) ,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 30),
          focusedDay:calendarFormate==CalendarFormat.month?focusedDay:DateTime(2021,9,19),
          ),
            ),
          
          SizedBox(
            width:MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 4,bottom: 4),
              child: Text('Schedule',style:GoogleFonts.nunito(
                            color:Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ) ,textAlign:TextAlign.left,),
            ),),
       
             isSameDay(focusedDay,DateTime(2021,9,1))||
             isSameDay(focusedDay,DateTime(2021,9,19))
             ? Column(
                children: [
                  TimeLine(
                    isFirst: true,
                    beforeLineStyle:const LineStyle(),
             child: Column(
                   children: [
                       InkWell(
                        onTap:(){
                       Navigator.push(context, MaterialPageRoute<void>(
                       builder: (BuildContext context) => 
                       const SchedulePage4(),
                         ),);
                        } ,
                        child: Cards(
                                headText:"Meeting With Anomali Team",
                                text1:"Time   07.00 a.m - 10.00 a.m" ,
                                 text2:"Place  Anomali Office" ,
                                 text3: "Notes  Nothing",
                               cardColor:const Color.fromRGBO(36, 22, 65, 1),
                                 color: const Color.fromRGBO(189, 189, 189, 1),
                                icon:Icons.check,
                                 colorWidthLine:const Color.fromRGBO(60,31,123,1),
                              ),
                       ),
                             InkWell(
                               onTap:(){
                                Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) => 
                                const SchedulePage5(),
                                  ),);
                                  } ,
                               child: Cards(headText:"Dinner With Anna",
                                    text1:"Time   08.00 pm",
                                    text2:"Place  Anna's House",
                                    text3: "Notes  don't forget to give her a bouquet of flowers",
                                    color: Colors.white,
                                    cardColor:const Color.fromRGBO(60, 31, 123, 1),
                                     colorWidthLine:const Color.fromRGBO(198,138,255,1) ,
                                    ),
                             ),

                   ],
             ),
                          
                           number: "20",
                          
                           
                            
                           ),

                            TimeLine(
                    isFirst: false,
                    beforeLineStyle:const LineStyle(
                      color: Color.fromRGBO(126, 99, 255, 1),
                      thickness:4 ,),
                    
                   
                    number:"26",
                     child:Column(children:  [
                   Cards(
                          headText:"Pay House Tax",
                          text1:"Time   08.00 pm" ,
                           text2:"Place  Tax Office" ,
                           text3: "Notes  Nothing",
                         cardColor:const Color.fromRGBO(60, 31, 123, 1),
                           color:  Colors.white,
                           colorWidthLine: const Color.fromRGBO(198,138,255,1),
                        ),
                         Cards(headText:"Make A New Propsal",
                              text1:"Time   10.00 am",
                              text2:"Place  Library",
                              text3: "Notes  Nothing",
                              color: Colors.white,
                              cardColor:const Color.fromRGBO(60, 31, 123, 1),
                               colorWidthLine: const Color.fromRGBO(198,138,255,1),
                              ),
               ],),),

                 TimeLine(
                beforeLineStyle:const LineStyle(
                      color: Color.fromRGBO(126, 99, 255, 1),
                      thickness:4 ,),
                isFirst: false,
                number:"28",
                 child: Cards(headText:"Meeting With A New Client",
                              text1: "Time  10.00 am",
                              text2: "Place  Office",
                              text3: "Notes  Nothing",
                              color: Colors.white,
                              cardColor: const Color.fromRGBO(60, 31, 123, 1),
                               colorWidthLine: const Color.fromRGBO(198,138,255,1),
                              ),
           
           ),
                ],
              )
            :Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              margin:const EdgeInsets.only(top: 20),
              height: 40,
              width: 220,
              decoration:const BoxDecoration(
                color: Color.fromRGBO(60, 31, 123, 1),
                borderRadius:BorderRadius.all(Radius.circular(10)),
                ),
              child:const Center(
                child: Text("You Didn't Have Any Schedule.",
                style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],),       
           ],
           
           
            ),
           
        ),
        ),
      
      );
  }
}


//414 width
//896 height
