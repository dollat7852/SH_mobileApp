


import 'package:flutter/material.dart';
import 'package:sh_capstone2/app/files/start_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REPAIR HOME',
      color:Colors.white,
      theme: ThemeData(),
      home: StartPage()
  
    );
  
  }
}


