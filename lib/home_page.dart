import 'package:app/widgets/consultationcard.dart';
import 'package:app/widgets/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.blue,
      body:SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children:[
          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height /7,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: CircleAvatar(radius:30,),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Welcome!!! Hope You Had A Good Day",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
                Text("This is Your Zone",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),],
              ),IconButton(onPressed: () {}, icon: Icon(Icons.menu,size:30 ,),),],
      
            ),
      
      
      
          ),
          titlebar(title:"UPCOMING CONSULTATIONS" ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              children: [ConsultationCard(color:Colors.red,name:"ADITYA BHATTACHARYA"),
            SizedBox(
              width: 15,
            ),  ConsultationCard(color:Colors.yellow,name:"ARNAV YADAV"),
             SizedBox(
              width: 15,
            ),  ConsultationCard(color:Colors.green,name:"VAIBHAV"),
             SizedBox(
              width: 15,
            ),  ConsultationCard(color:Colors.orange,name:"ANANYA CHOURASIA"),
            SizedBox(
              width: 15,
            ),   ConsultationCard(color:Colors.purple,name:"AGRIMA DWIVEDI"),],
            ),
          ),
        ),
        titlebar(title: "PRACTIONER PROFILES"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  size: 30,),
                  radius: 30,),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  size: 30,
                  color:Colors.white,),
                  radius: 30,),
                SizedBox(
                  width: 15,
                ),CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  color:Colors.white,
                  size: 30,),
                  radius: 30,),
                SizedBox(
                  width: 15,
                ),CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  color:Colors.white,
                  size: 30,),
                  radius: 30,),
                SizedBox(
                  width: 15,
                ),CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  color:Colors.white,
                  size: 30,),
                  radius: 30,),
               SizedBox(
                  width: 15,
                ), CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.add,
                  color:Colors.white,
                  size: 30,),
                  radius: 30,),
              ],
          
            ),
          ),
        ),
        titlebar(title: 'My Health Details'),
      Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ), itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(decoration:BoxDecoration(color:Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(20),),),),
              );
            }),
        ),
          ],
          
           
           ),
      ), ),
        floatingActionButton: FloatingActionButton(
        onPressed:(){},
        tooltip: 'NOTES',
        child: const Icon(Icons.add),
      ),);
  }
}