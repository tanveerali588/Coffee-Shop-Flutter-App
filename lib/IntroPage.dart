// ignore_for_file: prefer_const_constructors 
import 'package:mycoffeeshop/BoldText.dart';
import 'package:mycoffeeshop/HomePage.dart';
 
import 'package:flutter/material.dart'; 
 
class IntroPage extends StatelessWidget { 
 
  const IntroPage({super.key}); 
 
  @override 
 
  Widget build(BuildContext context){ 
 
    return Scaffold( 
  
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
 
          // image 
 
          Center(child: Image.asset("assets/p1.png")), 
 
          SizedBox( 
            height: 13, 
          ), 
 
          // container 
 
          GestureDetector(
            onTap: () {
               Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()    ));
            },
            child: Container( 
              width:250,  
              height: 70,
              child: Center(child:
                    BoldText(  
              Size: 25, 
              text: "Home Page",   
              color: Colors.black,  
            ), 
              ), 
             
              decoration: BoxDecoration( 
                color: Colors.white, 
                borderRadius: BorderRadius.circular(20) 
              ), 
              ),
          ), 
             
        ], 
      ) 
 
    ); 
 
  } 
 
} 