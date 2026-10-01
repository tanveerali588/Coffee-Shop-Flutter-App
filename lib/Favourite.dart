import 'package:flutter/material.dart';

List<Map<String, String>> favouriteItems = [];

// ignore: must_be_immutable
class Favourite extends StatelessWidget {
  Favourite({super.key});

  List Names = [
    "Cappuccino",
    "Espresso",
    "Latte",
    "Flat Wallio",
  ];

  List Images = [
    "assets/p5.jpeg",
    "assets/p6.jpeg",
    "assets/p7.jpg",
    "assets/p8.jpeg",
  ];

  List Descriptions = [
    "With Steamed Milk",
    "With Rich Coffee",
    "With Fresh Milk",
    "With Smooth Taste",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff080b0f),

      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.grey,
              size: 22,
            ),
            Icon(
              Icons.shopping_bag,
              color: Colors.grey,
              size: 22,
            ),
            Icon(
              Icons.favorite,
              color: Colors.orange,
              size: 22,
            ),
            Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 22,
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [

              // TOP BAR
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.apps,
                        color: Colors.grey,
                        size: 17,
                      ),
                    ),

                    Text(
                      "Favorites",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/p2.jpeg",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              // FAVORITE LIST
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: favouriteItems.length,
                  itemBuilder: (context, index) {
                    String name = favouriteItems[index]["name"]!;
String image = favouriteItems[index]["image"]!;
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff101419),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [

                          // IMAGE
                          Stack(
                            children: [

                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  image,
                                  height: 270,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              // HEART
                              Positioned(
                                right: 15,
                                top: 15,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                ),
                              ),

                              // NAME AREA
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.75),
                                  ),
                                  child: Row(
                                    children: [

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [

                                            Text(
                                              name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                            SizedBox(height: 2),

                                            Text(
                                              Descriptions[index],
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 9,
                                              ),
                                            ),

                                            SizedBox(height: 10),

                                            Row(
                                              children: [

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 17,
                                                ),

                                                SizedBox(width: 5),

                                                Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold,
                                                  ),
                                                ),

                                                SizedBox(width: 5),

                                                Text(
                                                  "(8,879)",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 8,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      Column(
                                        children: [

                                          Container(
                                            height: 45,
                                            width: 55,
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
                                                  size: 17,
                                                ),

                                                Text(
                                                  "Coffee",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 7,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(height: 5),

                                          Container(
                                            height: 38,
                                            width: 105,
                                            decoration: BoxDecoration(
                                              color: Color(0xff191e24),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Medium Roasted",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 7,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // DESCRIPTION
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "Description",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  "Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    height: 1.5,
                                  ),
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
        ),
      ),
    );
  }
}