import 'package:app/exercise_set.dart';
import 'package:app/exercise_set_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/exercise_sets.dart';
class ExercisesWidget extends StatefulWidget {


  @override
  State<ExercisesWidget> createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {
  ExerciseType selectedType=ExerciseType.low;
  
  @override
  Widget build(BuildContext context) => SliverPadding(
    padding: const EdgeInsets.all(16),
  sliver:SliverList(
    delegate:SliverChildListDelegate(
      [
        SizedBox(height: 8,),
        Text(
          'Exercise',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
        ),
        SizedBox(height: 8,),
        buildDifficultyLevel(),
        SizedBox(height:8),
        buildWorkouts(),

      ]
    )
     ,)
     );
Widget buildWorkouts() => GestureDetector(
  onHorizontalDragEnd: swipeFunction,
  child:   Column(
  
  
    
  
  
  
  
  
  
  ),
);
   Widget buildDifficultyLevel() => Row(
      children: ExerciseType.values.map(
        (type)
        {
          final name =getExerciseName(type);
          final fontWeight = 
          selectedType == type ? FontWeight.bold:FontWeight.normal;
          return Expanded(

          child: Center(
            child:GestureDetector(
              behavior:HitTestBehavior.opaque,
              onTap:() => setState(() => selectedType = type),
            
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                        name,
                        style: TextStyle(fontWeight:fontWeight,fontSize: 16 ),
              ),
            ),
          )));

        },
      ).toList(),
     );
       void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType);
    final hasNext = selectedIndex < ExerciseType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity !< 0 && hasNext) {
        final nextType = ExerciseType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity !> 0 && hasPrevious) {
        final previousType = ExerciseType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }

}