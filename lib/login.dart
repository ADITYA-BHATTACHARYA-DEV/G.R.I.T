// ignore_for_file: prefer_const_constructors

import 'package:app/components/my_button.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'components/my_textfield.dart';
import 'package:material_text_fields/material_text_fields.dart';
class Mylogin extends StatefulWidget {
   Mylogin({Key?key}) : super(key: key);
//text editing controllers

void signUserIn() {}
  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final _formKey=GlobalKey<FormState>();
final usernamecontroller=TextEditingController();
final passwordcontroller=TextEditingController();
bool obsecurePass=true;

  @override
 
  Widget build(BuildContext context) {
   
     
    return Scaffold(
      
      
      
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children:  [
        const  SizedBox(height:50),
          Icon(Icons.lock,
          size: 100,
          ),
        const  SizedBox(height: 50),
          Text("G.R.I.T:The Mental Health App",
          style: TextStyle(
            color: Colors.grey[700],
          fontSize :16,
          ),
          ),
            Text("  Welcomes You!!",
          style: TextStyle(
            color: Colors.grey[700],
          fontSize :26,
          ),
          ),
const SizedBox(height: 25,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal:25.0),
  child:   TextFormField(
    
  
  
  
    controller:usernamecontroller ,
  
    
  
   keyboardType:TextInputType.visiblePassword,
  
    obscureText:false ,
  
    cursorColor:Colors.black,
  
    decoration: const InputDecoration(
  
      hintText: 'Your Login Id',
  
      labelText: 'Username',
  
   prefixIcon:Icon(Icons.email_outlined),
  
  ),
  
  ),
),
const SizedBox(height: 25,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal:25.0),
  child:   TextFormField(
  
    controller:passwordcontroller ,
  
    cursorColor: Colors.black,
  
   keyboardType:TextInputType.visiblePassword,
  
    obscureText:obsecurePass ,
  
    
  
    decoration:  InputDecoration(
  
      hintText: 'Enter your 8 digit password',
  
      labelText: 'Password',
  
   prefixIcon:const Icon(Icons.lock_outline),
  
   prefixIconColor:Colors.black,
  
   suffixIcon: IconButton(onPressed: () {
  
    setState(()
  
    {
  
  obsecurePass = !obsecurePass;
  
    }
  
    );
  
   },icon:obsecurePass?const Icon(Icons.visibility_off_outlined,color: Colors.black,):const Icon(Icons.visibility,color: Colors.black,) 
  
   )
  
  ),
  ),

),

const SizedBox(height: 25,),

MyButton(width: double.infinity, 
title: 'Sign In', 
onPressed: () {
  Navigator.of(context).pushNamed('main');
},
 disable: false)
,

const SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
  child:   Row(
  
    mainAxisAlignment:MainAxisAlignment.end,
  
    children: [
  
          Text("Forgot Password?",
  
      
  
      style: TextStyle(color: Colors.black),),
  
    ],
  
  ),
),

const SizedBox(height: 25,),

const SizedBox(height: 25,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child:   Row(
  
    children: [
  
      Expanded(child: Divider(
  
        thickness: 0.5,
  
        color: Colors.grey,
  
      ),),
  
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text('Or continue with',style: TextStyle(color:Colors.grey)),
      ),
  
      Expanded(child: Divider(
  
        thickness: 0.5,
  
        color: Colors.grey,
  
      ))
  
    ],
  
  ),
),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Row(
            
            
            children:[
              
              
             Lottie.network(
                  'https://lottie.host/feb66c1b-48ce-43b5-8719-f4e6641656c4/NZ1mGZLb8s.json',height: 100,width: 150), 
              Lottie.network(
                  'https://lottie.host/5bcdefc7-7f5f-4453-b045-f07cbdbf2b5d/ug14osYPyG.json',height: 100,width: 150), 
                  Lottie.network(
                  'https://lottie.host/52a3d3fe-5625-4ec6-86f1-861cf0d17179/MRLjs9Cl83.json',height: 100,width: 150), 
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Not A Member?",
          style: TextStyle(color:Colors.black),),
          const SizedBox(width: 2,),
          Text("Register Now",
          style: TextStyle(
            color: Colors.blue,fontWeight: FontWeight.bold),
          ),
          ]

        )
      ],),
      //logo




      //welcome back



      //password



      //forgot password



      //sign in button


      //or continue with


      //google/apple sign up


      //not a member =register now




      

    ),
     ) ,

     );
  }
}