import 'package:flutter/material.dart';
import 'package:untitled/core/ui/login_screen.dart';
import 'home_screen.dart';

void main(){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          HomeScreen.routeName:(_)=>HomeScreen(),
          LoginScreen.routeName:(_)=>LoginScreen(),
    },
      initialRoute:LoginScreen.routeName,
    )
  );
}