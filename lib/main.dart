import 'package:app/screens/homepage.dart';
import 'package:app/screens/loginPage.dart';
import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:'Insta_StudyJam',
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes:{
      "/":(context) => const Loginpage(),
      MyRoutes.HomePageRoute:(context)=>const HomePage(),
    }


    );
    
    
  }
}
