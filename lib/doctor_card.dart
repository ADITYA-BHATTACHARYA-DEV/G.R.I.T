import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({Key?key}):super(key:key);

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(

padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
height:150,
child: GestureDetector(child: Card(
elevation:5,
color:Colors.white,
child:Row(
children: [
  SizedBox(
    width: Config.widthSize*0.33,
    child: Icon(Icons.person_2_rounded),
  ),
  Flexible(child:Padding(padding: const EdgeInsets.symmetric(horizontal:10,vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:const  <Widget>[
      Text('Dr Charles Xavier',
      style:TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      ) 
      ,),
      Text('Mental',
      style:TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal
      ) 
      ,),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:const <Widget> [
          Icon(Icons.star_border,color: Colors.yellow,size: 16,),
          Spacer(flex: 1,),
          Text('4.7'),
          Spacer(flex: 1,),
          Text('Reviews'),
          Spacer(flex: 1,),
           Text('(690)'),
              Spacer(flex: 1,),
        ],
      )
      
    ],
  ),) )
],
)
),
onTap: (){},

    ),);
  }
}