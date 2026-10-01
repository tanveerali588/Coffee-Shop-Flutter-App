// ignore_for_file: must_be_immutable, prefer_const_constructors       
import 'package:flutter/material.dart';      
import 'package:mycoffeeshop/BoldText.dart';      
import 'package:mycoffeeshop/LightText.dart'; 
  
class Tile2 extends StatelessWidget{  
  Tile2({super.key});  
  
  List Names =[      
      
"Cappuccino", // 0 index      
"Espresso", // 1 index      
"Latte", // 2 index      
"Flat Wallio", // 3 index      
      
];   
  
@override  
  Widget build(BuildContext context) {  
    return Container(    
                  width: double.maxFinite,    
                  height: 250,    
                  child: Column(   
                    children: [   
                      Expanded(   
                        child: ListView.builder(   
                          scrollDirection: Axis.vertical,  
                          itemCount: Names.length,   
                          itemBuilder: (context,index){    
                            return Container(    
                              margin: EdgeInsets.only(bottom: 20),  
          height: 230,     
          width: double.maxFinite,     
          decoration: BoxDecoration(     
            color: Colors.grey.withOpacity(0.1),     
            borderRadius: BorderRadius.circular(20)     
          ),     
          child: Stack(     
            children: [     
              Padding(     
                padding: const EdgeInsets.only(left: 15, top:15),     
                child: Stack(     
                  children: [      
                         
                    Row(  
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [  
                        Container(     
                              height: 160,     
                              width: 140,     
                              decoration: BoxDecoration(     
                                image: DecorationImage(     
                                  fit: BoxFit.cover,     
                                  image: AssetImage("assets/p3.jpeg")),     
                               color: Colors.red,     
                                borderRadius: BorderRadius.circular(20)     
                              ),     
                        ),  
  
                        SizedBox(      
          width: 10,      
                
                ),  
            Expanded(
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.start,     
                crossAxisAlignment: CrossAxisAlignment.start,   
                children: [  
                  BoldText(text: "5 Coffee Beans You\nMust Try !", color: Colors.white, Size: 15),  
                  SizedBox( 
                    width: 10, 
                  ), 
                  Column(     
                    mainAxisAlignment: MainAxisAlignment.start,     
                    crossAxisAlignment: CrossAxisAlignment.start,     
                    children: [     
                         
                    LightText(     
                      text: "We have the best coffee\nall over the world",     
                      Size: 10,    
                      color: Colors.white,     
                    ),  
                    SizedBox(  
                      width: 10,  
                        ),  
              SizedBox(  
                height: 20, 
              ),  
                    Padding(     
                      padding: const EdgeInsets.only(right: 10),     
                      child:  Row(  
                        children: [     
                        Row(children: [     
                          BoldText(text: "\$",     
                        Size: 15,    
                        color: Colors.orange,     
                        ),     
                        SizedBox(     
                          width: 3,     
                        ),     
                        BoldText(    
                          text: "4.20",    
                          Size: 15,    
                          color: Colors.white,    
                        ),     
                        ],),     
                        Spacer(),  
                           
                        Container(     
                          child: Icon(Icons.add),     
                          width: 25,     
                          height: 25,     
                          decoration: BoxDecoration(     
                            color: Colors.orange,     
                            borderRadius: BorderRadius.circular(10)     
                          ),     
                        )    
                      ],),     
                    )   
                  ],     
                ),  
              ],  
            ),
            ),
              
  
  
  
                      ],  
                    ),  
               
               
                  ],     
                ),     
              ),     
              
            ],     
          )     
                            );     
                          }     
                        ),     
                      ),     
                    ],     
                  ),     
                );  
  }  
} 