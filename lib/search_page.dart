import 'package:app/appoinment_card.dart';
import 'package:app/doctor_card.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key?key}):super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}
enum  FilterStatus
{upcoming,complete,cancel}
class _SearchPageState extends State<SearchPage> {
  FilterStatus status=FilterStatus.upcoming;
  Alignment _alignment=Alignment.centerLeft;
  List<dynamic> schedules=[
    {
      "doctor_name":"Steven Strange",
      "doctor_profile":"assets/doc.jpeg",
      "category":"Mental",
      "status":FilterStatus.upcoming,

    },
    {
      "doctor_name":"Bruce Banner",
      "doctor_profile":"assets/bruce.jpg",
      "category":"Mental",
      "status":FilterStatus.complete,

    },
  
  ];
  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules=schedules.where((var schedule) {
      // switch(schedule['status'])
      // {
      //   case 'upcoming':
      //   schedule[status] =FilterStatus.upcoming;
      //   break;
      //    case 'complete':
      //   schedule[status] =FilterStatus.complete;
      //   break;
      //    case 'cancel':
      //   schedule[status] =FilterStatus.cancel;
      //   break;
      // }
      return schedule['status']==status;
    }
    ).toList();
     return SafeArea(
      child: Padding(padding: const EdgeInsets.only(left: 28,top:28,right:28,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Text(
            'Appointment Schedule',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25.0,),
           Stack(
      children: [
       Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            for(FilterStatus filterStatus in FilterStatus.values)
            Expanded(child: GestureDetector(
              onTap:() {
                setState((){
                  if(filterStatus == FilterStatus.upcoming)
                  {
                    status =FilterStatus.upcoming;
                    _alignment = Alignment.centerLeft;

                  }
                  else if(filterStatus == FilterStatus.complete)
                  {
                    status = FilterStatus.complete;
                    _alignment = Alignment.center;


                  }
                  else if(filterStatus == FilterStatus.cancel)
                  {
                    status = FilterStatus.cancel;
                    _alignment = Alignment.centerRight;
                  }

                }
              );
              },
               child: Center(child:
               Text(filterStatus.name),
               ),
             
            ),
            
            )
               
       ],
        ),

        ),
        AnimatedAlign(alignment: _alignment, duration: const Duration(milliseconds:200),
       child: Container(
        width: 120,
        height:40 ,
        decoration: BoxDecoration(
          color: Config.primaryColor,
          borderRadius: BorderRadius.circular(20),


        ),
child:Center(
  child: Text(
    status.name,
    style: const TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.bold,

    ),

  ),
)

       ),
       
       ),
      ],
    ),

SizedBox(height:25.0),

Expanded(
  child: ListView.builder(
    itemCount: filteredSchedules.length,
itemBuilder: ((context , index)
{
  var _schedule = filteredSchedules[index];
  
  bool isLastElement = filteredSchedules.length + 1 == index;
  return Card(
    shape: RoundedRectangleBorder(side: const BorderSide(
      color:Colors.grey,

    ) ,

    borderRadius: BorderRadius.circular(20),

    ),
    margin: !isLastElement ? const EdgeInsets.only(bottom:20):EdgeInsets.zero,
  child: Padding(padding: const EdgeInsets.all(15),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(_schedule['doctor_profile']),

      ),
     const  SizedBox(),
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _schedule['doctor_name'],
          style: const TextStyle(
            color:Colors.black,
            fontWeight: FontWeight.w700,

          ),
        ),
        SizedBox(height: 25,),
        Text(
          _schedule['category'],
          style: const TextStyle(
            color:Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,

          ),
        ),
        SizedBox(height: 25,),
        AppointmentCard(),
         const Text(
            'Top Doctors',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
const SizedBox(height:15),
Column(
  children:List.generate(10,(index)  {
    return DoctorCard();

  },
),
),
      ],
     )


    ],
  ),),
  
  );
}
),)
 ,),

          
        ],
      ),
      
      ),
    
   
    );

    
     
    
   
  }
}