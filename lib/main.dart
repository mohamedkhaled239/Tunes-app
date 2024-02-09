
import 'package:appmusic/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main (){
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
   );
  runApp( MyApp());
  }


 class MyApp extends StatelessWidget {
   MyApp({super.key});
  final  List<item>itemss=const [
      item(color: Colors.red, link: "assets/note1.mp3"),
      item(color: Colors.yellow, link: "assets/note2.mp3"),
      item(color: Colors.green, link: "assets/note3.mp3"),
      item(color: Colors.blueAccent, link: "assets/note4.mp3"),
      item(color: Colors.brown, link: "assets/note5.mp3"),
      item(color: Colors.lightGreenAccent, link: "assets/note6.mp3"),
      item(color: Colors.deepOrange, link: "assets/note7.mp3"),




  ];
  

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:  Color.fromARGB(255, 104, 101, 91),
          title: const Text('Music app',),
        ),
        
        body:  Column(
          children: [         
               for(int  i=0;i<itemss.length;i++)
               item(color: itemss[i].color, link: itemss[i].link),
                                                          
                                                          
                    ],
        ),
      ),
    );
    
  }
}