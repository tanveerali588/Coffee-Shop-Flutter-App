// ignore_for_file: must_be_immutable, prefer_const_constructors        
import 'package:flutter/material.dart';       
import 'package:mycoffeeshop/BoldText.dart';       
import 'package:mycoffeeshop/Tile.dart';  
import 'package:mycoffeeshop/Tile2.dart';  
import 'package:mycoffeeshop/Tile3.dart';  
import 'package:mycoffeeshop/Favourite.dart';

class HomePage extends StatelessWidget {       
  HomePage({super.key});       
       
List Names =[       
       
"Cappuccino", // 0 index       
"Espresso", // 1 index       
"Latte", // 2 index       
"Flat Wallio", // 3 index       
    
];       
       
       
  @override       
  Widget build(BuildContext context) {       
    return SafeArea(       
      child: Scaffold(     
  
          
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Favourite(),
                ),
              );
            }
          },
          items: [  
          
          
          
      BottomNavigationBarItem( 
  icon: Icon( 
    Icons.home, 
    color: Colors.white, 
  ), 
  label: "", 
), 
 
BottomNavigationBarItem( 
  icon: Icon( 
    Icons.shopping_bag, 
    color: Colors.white, 
  ), 
  label: "", 
), 
 
BottomNavigationBarItem( 
  icon: Icon( 
    Icons.favorite, 
    color: Colors.white, 
  ), 
  label: "", 
), 
 
BottomNavigationBarItem( 
  icon: Icon( 
    Icons.notifications, 
    color: Colors.white, 
  ), 
  label: "", 
), 
  
  
  
]),  
  
      body: Padding(       
        padding: const EdgeInsets.all(16.0),       
        child: SingleChildScrollView(      
          child: Column(       
            crossAxisAlignment: CrossAxisAlignment.start,       
            children: [       
            Padding(       
              padding: const EdgeInsets.all(16.0),       
              child: Row(       
                       
                mainAxisAlignment: MainAxisAlignment.spaceBetween,       
                children: [       
                Container(       
                  child: Icon(Icons.apps,       
                  size: 30,       
                  color: Colors.grey.withOpacity(0.5),       
                  ),       
                height: 40,       
                width: 40,       
                decoration: BoxDecoration(       
                  color: Colors.grey.withOpacity(0.2),       
                  borderRadius: BorderRadius.circular(10)       
                ),       
                ),       
                     
              Container(       
                  child: Image.asset('assets/p2.jpeg'),       
                height: 40,       
                width: 40,       
                decoration: BoxDecoration(       
                  color: Colors.grey.withOpacity(0.2),       
                  borderRadius: BorderRadius.circular(10)       
                ),       
                ),       
                     
              ],),       
            ),       
                 
          Padding(       
            padding: const EdgeInsets.all(12.0),       
            child: BoldText(       
            text: "Find the best\ncoffee for you",       
            Size: 35,       
            color: Colors.white,      
            ),       
          ),       
                 
                Container(       
                 
          child: Padding(       
            padding: const EdgeInsets.only(left: 20),       
            child: Row(children: [       
                   
            Icon(Icons.search),       
                   
            SizedBox(width: 10,       
                   
            ),       
                
            Expanded(child: TextFormField(       
            decoration: InputDecoration(hintText: "Find your Coffee",       
                   
              border: InputBorder.none      
            ),       
            ))       
                   
            ],),       
          ),       
                 
          width: double.maxFinite,       
          height: 60,       
          decoration: BoxDecoration(       
          color: Colors.grey.withOpacity(0.2),       
                 
            borderRadius: BorderRadius.circular(10)       
          ),       
                 
          ),       
                 
                // list view . builder       
                 
                Container(       
          height: 30,       
          width: double.maxFinite,       
          child: ListView.builder(       
          scrollDirection: Axis.horizontal,       
          itemCount: Names.length,       
          itemBuilder: (context, index){       
            return Container(       
              margin: EdgeInsets.only(right: 10),       
              height: 30,       
              width: 110,       
              child: Center(child: BoldText(text: Names[index],       
              Size: 17,      
              color: index == 0      
              ? Colors.orange      
              : Colors.grey.withOpacity(0.3)      
              )),       
            );       
          }),       
                ),       
                 
                // image container      
                
                SizedBox(      
          height: 30,      
                
                ),   
  
                Tile(),      
                
                // pecial or u  
                   SizedBox(      
          height: 30,      
                
                ),  
  
                BoldText(  
  text: "Special For You",  
  color: Colors.white,  
  Size: 25,  
),  
  
SizedBox(      
          height: 20,      
                
                ),  
  
                Tile2(), 
 
 
 
                 BoldText(  
  text: "Coffee Beans",  
  color: Colors.white,  
  Size: 25,  
),  
 
                SizedBox(      
          height: 20,      
                
                ), 
 
                Tile3(),  
 
         
                  
          ],      
        ),      
      ),      
    )      
    ),      
    );      
  }      
}