import 'package:app/home.dart';
import 'package:app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:app/splash.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:app/screens/auth_page.dart';
import 'login.dart';
import 'package:app/main_layout.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'G.R.I.T:HEALTH APP',
   initialRoute:'/' ,
    routes:{
      '/':(context) => Mylogin(),
      'main':(context) => Splash(),
     
    },

  ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
static final naigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEDICAL APP',
      theme: ThemeData(
        inputDecorationTheme:  const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.OutlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.OutlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Config.primaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData
        (backgroundColor: Config.primaryColor,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 10,
        type: BottomNavigationBarType.fixed,


        ),        
      ),
       
   




      );
    
      home:const Splash();
      
    
  }
}

