import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(10),


      ),
      child: Material(
        color:Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget> [
              Row(
                children: [
                    CircleAvatar(
                backgroundImage:AssetImage('assets/doc.jpg'),
                ),
                 SizedBox(width: 10,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:const <Widget>
                   [
                    Text('Dr Steven Strange',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 2,),
                    Text('Mental',style:TextStyle(color: Colors.black) ,)

                  ],
                 ),

                  
                ],
              ),
              SizedBox(height: 10,),
              const ScheduleCard(),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  
                  ),
                  child: const Text('Cancel Appointment',
                  style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},)),
                 

const SizedBox(width: 20,),
                  Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  
                  ),
                  child: const Text('Completed Appointment',
                  style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},))
                ],
              )

            
            ],
          ),
        ),
       ),
    );
  }
}
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key?key}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return Container (decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:const  <Widget>[
         Icon(Icons.calendar_today,
        color:Colors.white,
        size: 15,
        
        ),
      
        const SizedBox(width: 5),
        Text(
          'Monday:05/08/2024',
          style: const TextStyle(color:Colors.white),),
          const SizedBox(width:20),
          const SizedBox(),
          const Icon(Icons.access_alarm,
          color: Colors.white,
          size: 17,),
          Flexible(child:Text('6:00 PM',style:TextStyle(color: Colors.white),),)




        


      ],

    ),
    );
  }
}