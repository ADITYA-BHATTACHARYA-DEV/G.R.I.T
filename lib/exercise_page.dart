import 'package:app/exercise_widget.dart';
import 'package:app/line_chart_widget.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) => Scaffold (
    body: CustomScrollView
    (
      physics: BouncingScrollPhysics(),
      slivers: [
        buildAppBar(context),
        ExercisesWidget(),
       
      ],

    ),
    
  );

SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
   title:Text('Statistics'),
  flexibleSpace: FlexibleSpaceBar(background:LineChartWidget()),
  expandedHeight:MediaQuery.of(context).size.height*0.4,
  stretch:true ,
  backgroundColor: Config.primaryColor,
 

  centerTitle: true,
  pinned: true,
   leading:Icon(Icons.menu),
  actions: [
   
    Icon(Icons.person,size: 28,),
    SizedBox(width: 12,),
   

  ],
);

  
}
