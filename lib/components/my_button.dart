import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  const MyButton({Key?key,required this.width,required this.title,required this.onPressed,required this.disable});
final double width;
final String title;
final  Function() onPressed;
final bool disable;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox
    (
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Config.primaryColor ,
          foregroundColor: Colors.white),
        
          onPressed:  disable? null :onPressed,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            )
            ),
          ),
      ),
      );
  }
}