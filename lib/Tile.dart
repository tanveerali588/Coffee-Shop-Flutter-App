// ignore_for_file: must_be_immutable, prefer_const_constructors     
import 'package:flutter/material.dart';    
import 'package:mycoffeeshop/BoldText.dart';   

class Tile extends StatelessWidget{
  Tile({super.key});

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
                          scrollDirection: Axis.horizontal,
                          itemCount: Names.length, 
                          itemBuilder: (context,index){  
                            return Container(  
                              margin: EdgeInsets.only(right: 20),
          height: 250,   
          width: 160,   
          decoration: BoxDecoration(   
            color: Colors.grey.withOpacity(0.1),   
            borderRadius: BorderRadius.circular(20)   
          ),   
          child: Stack(   
            children: [   
              Padding(   
                padding: const EdgeInsets.all(8.0),   
                child: Stack(   
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
             
                  Opacity(   
                    opacity: 0.6,   
                    child: Container(   
                       
                      child: Row(   
                        mainAxisAlignment: MainAxisAlignment.center,   
                        children: [   
                        Icon(   
                          Icons.star,   
                          color: Colors.orange,   
                          size: 15,   
                        ),  
                        BoldText(   
                          text: "4.5",   
                          Size: 12,  
                          color: Colors.white),   
                       
                        ],   
                      ),  
                    margin: EdgeInsets.only(left: 80),   
                    height: 20,   
                    width: 60,   
                    decoration: BoxDecoration(   
                      color: Colors.black,   
                      borderRadius: BorderRadius.only(   
                        topRight: Radius.circular(20),   
                        bottomLeft: Radius.circular(20)   
                      )   
                    ),   
                       
                    ),   
                  )   
             
             
                  ],   
                ),   
              ),   
             
              Padding(   
                padding: const EdgeInsets.only(top: 177, left:10),   
                child: Column(   
                  mainAxisAlignment: MainAxisAlignment.start,   
                  crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [   
                       
                    BoldText(   
                      text: Names[index],   
                      Size: 18,  
                      color: Colors.white,   
                    ),   
             
                    Text(   
                      "With  Oat Milk",   
                      style: TextStyle(  
                        fontSize: 10,  
                      ),  
                    ),  
                    Padding(   
                      padding: const EdgeInsets.only(right: 10),   
                      child: Row(   
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,   
                        children: [   
                        Row(children: [   
                          BoldText(text: "\$",   
                        Size: 18,  
                        color: Colors.orange,   
                        ),   
                        SizedBox(   
                          width: 3,   
                        ),   
                        BoldText(  
                          text: "4.20",  
                          Size: 18,  
                          color: Colors.white,  
                        ),   
                        ],),   
                         
                        Container(   
                          child: Icon(Icons.add),   
                          width: 30,   
                          height: 30,   
                          decoration: BoxDecoration(   
                            color: Colors.orange,   
                            borderRadius: BorderRadius.circular(10)   
                          ),   
                        )  
                      ],),   
                    ) 
                  ],   
                ),   
              )   
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