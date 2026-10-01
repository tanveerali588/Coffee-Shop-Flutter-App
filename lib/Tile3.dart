// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mycoffeeshop/BoldText.dart';
import 'package:mycoffeeshop/LightText.dart';
import 'package:mycoffeeshop/CoffeeDetailPage.dart';

class Tile3 extends StatelessWidget {
  Tile3({super.key});

  List Names = [
    "Robusta Beans", // 0 index
    "Cappuccino", // 1 index
    "Arabica Beans", // 2 index
  ];

  List Roast = [
    "Medium Roasted",
    "With Steamed Milk",
    "Medium Roasted",
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
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 230,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                        ),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/p4.jpeg"),
                                    ),
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.circular(20),
                                  ),
                                ),

                                SizedBox(
                                  width: 10,
                                ),

                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BoldText(
                                        text: Names[index],
                                        color: Colors.white,
                                        Size: 15,
                                      ),

                                      SizedBox(
                                        width: 10,
                                      ),

                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          LightText(
                                            text: Roast[index],
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
                                            padding:
                                                const EdgeInsets.only(
                                              right: 10,
                                            ),
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    BoldText(
                                                      text: "\$",
                                                      Size: 15,
                                                      color:
                                                          Colors.orange,
                                                    ),

                                                    SizedBox(
                                                      width: 3,
                                                    ),

                                                    BoldText(
                                                      text: "4.20",
                                                      Size: 15,
                                                      color:
                                                          Colors.white,
                                                    ),
                                                  ],
                                                ),

                                                Spacer(),

                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder:
                                                            (context) =>
                                                                CoffeeDetailPage(
                                                          name:
                                                              Names[index],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          Colors.white,
                                                      size: 18,
                                                    ),
                                                    width: 25,
                                                    height: 25,
                                                    decoration:
                                                        BoxDecoration(
                                                      color:
                                                          Colors.orange,
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                                  10),
                                                    ),
                                                  ),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}