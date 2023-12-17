import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const  AppBarTheme(
  
         systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
         ),
          backgroundColor: Colors.transparent,
          elevation: 15.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          
        ),

          
        ),
      home:HomeView(),
    );
  }
}



