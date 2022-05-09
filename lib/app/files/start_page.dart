import 'dart:async';


import 'package:flutter/material.dart';
import 'package:sh_capstone2/app/files/login_page.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        color: Colors.blue,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo_white.png'),
              Align(child: Text('REPAIR HOME', style: const TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w400,),))
            ],
          ),
        ),
       
      ),
    );
  }
   @override
void initState() {
 Timer(Duration(seconds: 5), (){

Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> 
 loginPage()));
});
 super.initState();
}
}



