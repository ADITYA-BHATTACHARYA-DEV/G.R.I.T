
import 'package:app/NavBar.dart';
import 'package:app/exercise_page.dart';
import 'package:app/login.dart';
import 'package:flutter/material.dart';
import 'package:app/home_page.dart';
import 'package:app/exercise_page.dart';
import 'package:app/account_page.dart';
import 'package:app/notification_page.dart';
import 'package:app/search_page.dart';
import 'package:animated_page_transition/animated_page_transition.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentPage=0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
  final screens=[
    homePage(),
    Youtube(),
    ExercisePage(),
    AccPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      drawer: NavBar(),
      body:IndexedStack(
        index:currentPage,
        children:screens,
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentPage,
        onTap: (index){
          setState(() {
            currentPage=index;
          
          });
        },
        type:BottomNavigationBarType.fixed,
         items: [BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,),label:"HOME"),

      BottomNavigationBarItem(icon:Icon(Icons.person,color:Colors.green,),label:"ACCOUNT"),
            BottomNavigationBarItem(icon:Icon(Icons.run_circle_outlined,color:Colors.purple,),label:"EXERCISE"),
      BottomNavigationBarItem(icon:Icon(Icons.notification_add,color:Colors.red,),label:"GENIE"),
      BottomNavigationBarItem(icon:Icon(Icons.search,color:Colors.blue,),label:"SEARCH")]),
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title:Text('WELCOME ADITYA BHATTACHARYA'),
         actions:<Widget> [
          IconButton(icon:Icon(Icons.alarm),
          onPressed:() { },),
          IconButton(icon:Icon(Icons.more_vert),
          onPressed:() { },),
        
          
         ],
         flexibleSpace: SafeArea(child: Icon(Icons.add_to_queue,
         size:75.0,
         color:Colors.white70,),),
        
       
      ),
      
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
