import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConsultationCard extends StatelessWidget {
  final String name;
  final Color color;
  
  const ConsultationCard({super.key,required this.name,required this.color});


  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:155,
      height:180,
      decoration:BoxDecoration(color:color,
      borderRadius: const BorderRadius.all(Radius.circular(20),),),
      child:Padding(padding: const EdgeInsets.only(top:24,left:24,right:24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              const CircleAvatar(
                backgroundColor:Colors.white,
                radius:21,
          ),
          Column(
            crossAxisAlignment:CrossAxisAlignment.end,
            children:const <Widget>[
              Text(
                "05:30 PM",
                style: TextStyle(color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:13),
              ),
              Text("5 AUGUST",
              style:TextStyle(color:Colors.white),

                ),      ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize: 16),
                ),
                OutlinedButton(onPressed: () {}, style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.purple),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape:MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28),),
                  ),
                  ),
                ),
             
             child:const Text(
              "Join The Call",
              style: TextStyle(fontSize: 12),
             ), 
             ),
             ],
            ),
            const SizedBox(height: 10,),
        ],  ),
        
            
              ),
  
            
          );
        
      
    
  }
  

}