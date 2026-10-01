// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mycoffeeshop/BoldText.dart';
import 'package:mycoffeeshop/LightText.dart';
import 'package:mycoffeeshop/cart.dart';
import 'package:mycoffeeshop/Favourite.dart';

class CoffeeDetailPage extends StatefulWidget {
  String name;

  CoffeeDetailPage({
    super.key,
    required this.name,
  });

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  bool isLiked = false;
  String selectedGrams = "250gm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff080b0f),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/p5.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.9),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    left: 20,
                    top: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    right: 20,
                    top: 20,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });

                        if (isLiked) {
                          favouriteItems.add({
                            "name": widget.name,
                            "image": "assets/p5.jpeg",
                          });

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Favourite(),
                            ),
                          );
                        } else {
                          favouriteItems.removeWhere(
                            (item) => item["name"] == widget.name,
                          );
                        }
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          isLiked
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 15,
                    right: 15,
                    bottom: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              BoldText(
                                text: widget.name,
                                Size: 17,
                                color: Colors.white,
                              ),

                              SizedBox(height: 3),

                              LightText(
                                text: "From Africa",
                                Size: 10,
                                color: Colors.white,
                              ),

                              SizedBox(height: 12),

                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  ),

                                  SizedBox(width: 5),

                                  BoldText(
                                    text: "4.5",
                                    Size: 13,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 5),

                                  LightText(
                                    text: "(6,879)",
                                    Size: 8,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 8),

                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 55,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff191e24),
                                    borderRadius:
                                        BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.coffee,
                                        color: Colors.orange,
                                        size: 18,
                                      ),

                                      SizedBox(height: 2),

                                      LightText(
                                        text: "Bean",
                                        Size: 7,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: 5),

                                Container(
                                  width: 55,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff191e24),
                                    borderRadius:
                                        BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.public,
                                        color: Colors.orange,
                                        size: 18,
                                      ),

                                      SizedBox(height: 2),

                                      LightText(
                                        text: "Africa",
                                        Size: 7,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 5),

                            Container(
                              width: 115,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff191e24),
                                borderRadius:
                                    BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.orange,
                                    size: 18,
                                  ),

                                  SizedBox(width: 4),

                                  LightText(
                                    text: "Medium Roasted",
                                    Size: 7,
                                    color: Colors.white,
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
            ),

            Container(
              height: 290,
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 18,
              ),
              decoration: BoxDecoration(
                color: Color(0xff101419),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    text: "Description",
                    Size: 12,
                    color: Colors.white,
                  ),

                  SizedBox(height: 12),

                  LightText(
                    text:
                        "Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world's coffee beans. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed!",
                    Size: 9,
                    color: Colors.white,
                  ),

                  SizedBox(height: 12),

                  BoldText(
                    text: "Size",
                    Size: 11,
                    color: Colors.white,
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGrams = "250gm";
                          });
                        },
                        child: Container(
                          width: 78,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedGrams == "250gm"
                                ? Colors.orange
                                : Color(0xff191e24),
                            border: Border.all(
                              color: selectedGrams == "250gm"
                                  ? Colors.orange
                                  : Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(8),
                          ),
                          child: LightText(
                            text: "250gm",
                            Size: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGrams = "500gm";
                          });
                        },
                        child: Container(
                          width: 78,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedGrams == "500gm"
                                ? Colors.orange
                                : Color(0xff191e24),
                            border: Border.all(
                              color: selectedGrams == "500gm"
                                  ? Colors.orange
                                  : Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(8),
                          ),
                          child: LightText(
                            text: "500gm",
                            Size: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGrams = "1000gm";
                          });
                        },
                        child: Container(
                          width: 78,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedGrams == "1000gm"
                                ? Colors.orange
                                : Color(0xff191e24),
                            border: Border.all(
                              color: selectedGrams == "1000gm"
                                  ? Colors.orange
                                  : Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(8),
                          ),
                          child: LightText(
                            text: "1000gm",
                            Size: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          LightText(
                            text: "Price",
                            Size: 9,
                            color: Colors.grey,
                          ),

                          SizedBox(height: 5),

                          Row(
                            children: [
                              BoldText(
                                text: "\$",
                                Size: 15,
                                color: Colors.orange,
                              ),

                              SizedBox(width: 4),

                              BoldText(
                                text: "10.50",
                                Size: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),

                      Spacer(),

                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cart(),
                              ),
                            );
                          },
                          child: Container(
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.circular(15),
                            ),
                            child: BoldText(
                              text: "Add to Cart",
                              Size: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}