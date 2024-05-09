import 'package:flutter/material.dart';

class titlebar extends StatefulWidget {
  final String title;
  const titlebar({super.key,required this.title});

  @override
  State<titlebar> createState() => _titlebarState();
}

class _titlebarState extends State<titlebar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text("YOUR CREDENTIALS",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold )),
        IconButton(onPressed: (){}, icon: const Icon (Icons.arrow_right_alt,
        size:33,),
     ), ],
    );
  }
}