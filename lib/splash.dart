import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';
class Splash extends StatefulWidget{
  const Splash ({Key? key}):super(key:key);
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash>
{
  @override
void initState(){
  super.initState();
  _navigatetohome();
}
_navigatetohome()async{
  await Future.delayed(Duration(milliseconds: 5500),(){});
  Navigator.pushReplacement(
    context, MaterialPageRoute(builder:(context)=> MyHomePage(title: 'adi'),),);
}
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Lottie.network(
                'https://lottie.host/97767f94-b8ed-45d9-9cee-1d2533a5c6a0/JSeH1DvbIU.json'),           
            Container(
              child:Text('G.R.I.T:The Mental Health App',style:TextStyle(fontSize:24,
              fontWeight:FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
 