import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Home Page",
      home: splachscreen(),
    );
  }
}
class splachscreen extends StatelessWidget {
  const splachscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:SingleChildScrollView(

        child: Column(
        children: [
          Image.asset("assets/images/music-app.gif"),
          const Text("Music App",style:TextStyle(
            fontSize:40,
            fontWeight:FontWeight.bold,
            color:Colors.black87,
          ),)

        ],
    ),
      )
        ,backgroundColor:Colors.blueAccent,
        nextScreen:const HomePage(),
      splashIconSize:250,
    )
    ;
  }
}
