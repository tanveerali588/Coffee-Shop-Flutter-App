import 'package:flutter/material.dart';
import 'package:mycoffeeshop/payment.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String cappuccinoOneSize = "S";
  String cappuccinoTwoSize = "M";

  // Card 1 - Separate quantity for S, M and L
  int cappuccinoOneSmallQuantity = 1;
  int cappuccinoOneMediumQuantity = 1;
  int cappuccinoOneLargeQuantity = 1;

  // Card 2 - M only
  int cappuccinoTwoQuantity = 1;

  // Card 3 - Robusta Beans
  int robustaQuantity = 1;

  double get totalPrice {
    return (4.20 * cappuccinoOneSmallQuantity) +
        (4.20 * cappuccinoOneMediumQuantity) +
        (4.20 * cappuccinoOneLargeQuantity) +
        (6.20 * cappuccinoTwoQuantity) +
        (6.20 * robustaQuantity);
  }

  void increaseCappuccinoOneSmall() {
    setState(() {
      cappuccinoOneSmallQuantity++;
    });
  }

  void decreaseCappuccinoOneSmall() {
    setState(() {
      if (cappuccinoOneSmallQuantity > 1) {
        cappuccinoOneSmallQuantity--;
      }
    });
  }

  void increaseCappuccinoOneMedium() {
    setState(() {
      cappuccinoOneMediumQuantity++;
    });
  }

  void decreaseCappuccinoOneMedium() {
    setState(() {
      if (cappuccinoOneMediumQuantity > 1) {
        cappuccinoOneMediumQuantity--;
      }
    });
  }

  void increaseCappuccinoOneLarge() {
    setState(() {
      cappuccinoOneLargeQuantity++;
    });
  }

  void decreaseCappuccinoOneLarge() {
    setState(() {
      if (cappuccinoOneLargeQuantity > 1) {
        cappuccinoOneLargeQuantity--;
      }
    });
  }

  void increaseCappuccinoTwo() {
    setState(() {
      cappuccinoTwoQuantity++;
    });
  }

  void decreaseCappuccinoTwo() {
    setState(() {
      if (cappuccinoTwoQuantity > 1) {
        cappuccinoTwoQuantity--;
      }
    });
  }

  void increaseRobusta() {
    setState(() {
      robustaQuantity++;
    });
  }

  void decreaseRobusta() {
    setState(() {
      if (robustaQuantity > 1) {
        robustaQuantity--;
      }
    });
  }

  Widget sizeButton(
    String size,
    String selectedSize,
    VoidCallback onTap,
  ) {
    bool selected = size == selectedSize;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected
              ? Colors.orange
              : const Color(0xff191e24),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: selected ? Colors.white : Colors.grey,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget quantityButton(
    IconData icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff191e24),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 16,
        ),
      ),
    );
  }

  Widget quantityNumber(int quantity) {
    return Text(
      "$quantity",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const SizedBox(height: 12),

              // -----------------------------
              // TOP BAR
              // -----------------------------
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.grid_view_rounded,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                  const Text(
                    "Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/p9.jpeg",
                      height: 26,
                      width: 26,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    // -----------------------------
                    // CARD 1 - CAPPUCCINO
                    // -----------------------------
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(13),
                                child: Image.asset(
                                  "assets/p6.jpeg",
                                  height: 83,
                                  width: 83,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(width: 12),

                              const Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cappuccino",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "With Steamed Milk",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 8,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Medium Roasted",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          // -----------------------------
                          // S
                          // -----------------------------
                          Row(
                            children: [
                              sizeButton(
                                "S",
                                cappuccinoOneSize,
                                () {
                                  setState(() {
                                    cappuccinoOneSize = "S";
                                  });
                                },
                              ),

                              const SizedBox(width: 12),

                              const Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Text(
                                " 4.20",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Spacer(),

                              quantityButton(
                                Icons.remove,
                                decreaseCappuccinoOneSmall,
                              ),

                              const SizedBox(width: 9),

                              quantityNumber(
                                cappuccinoOneSmallQuantity,
                              ),

                              const SizedBox(width: 9),

                              quantityButton(
                                Icons.add,
                                increaseCappuccinoOneSmall,
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          // -----------------------------
                          // M
                          // -----------------------------
                          Row(
                            children: [
                              sizeButton(
                                "M",
                                cappuccinoOneSize,
                                () {
                                  setState(() {
                                    cappuccinoOneSize = "M";
                                  });
                                },
                              ),

                              const SizedBox(width: 12),

                              const Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Text(
                                " 4.20",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Spacer(),

                              quantityButton(
                                Icons.remove,
                                decreaseCappuccinoOneMedium,
                              ),

                              const SizedBox(width: 9),

                              quantityNumber(
                                cappuccinoOneMediumQuantity,
                              ),

                              const SizedBox(width: 9),

                              quantityButton(
                                Icons.add,
                                increaseCappuccinoOneMedium,
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          // -----------------------------
                          // L
                          // -----------------------------
                          Row(
                            children: [
                              sizeButton(
                                "L",
                                cappuccinoOneSize,
                                () {
                                  setState(() {
                                    cappuccinoOneSize = "L";
                                  });
                                },
                              ),

                              const SizedBox(width: 12),

                              const Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Text(
                                " 4.20",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const Spacer(),

                              quantityButton(
                                Icons.remove,
                                decreaseCappuccinoOneLarge,
                              ),

                              const SizedBox(width: 9),

                              quantityNumber(
                                cappuccinoOneLargeQuantity,
                              ),

                              const SizedBox(width: 9),

                              quantityButton(
                                Icons.add,
                                increaseCappuccinoOneLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    // -----------------------------
                    // CARD 2 - CAPPUCCINO
                    // M ONLY
                    // -----------------------------
                    Container(
                      height: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(13),
                            child: Image.asset(
                              "assets/p7.jpg",
                              height: 100,
                              width: 83,
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),

                                const Text(
                                  "With Steamed Milk",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8,
                                  ),
                                ),

                                const Spacer(),

                                // ONLY M
                                Row(
                                  children: [
                                    sizeButton(
                                      "M",
                                      cappuccinoTwoSize,
                                      () {
                                        setState(() {
                                          cappuccinoTwoSize = "M";
                                        });
                                      },
                                    ),

                                    const SizedBox(width: 8),

                                    const Text(
                                      "\$ 6.20",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8),

                                Row(
                                  children: [
                                    quantityButton(
                                      Icons.remove,
                                      decreaseCappuccinoTwo,
                                    ),

                                    const SizedBox(width: 20),

                                    quantityNumber(
                                      cappuccinoTwoQuantity,
                                    ),

                                    const SizedBox(width: 20),

                                    quantityButton(
                                      Icons.add,
                                      increaseCappuccinoTwo,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    // -----------------------------
                    // CARD 3 - ROBUSTA BEANS
                    // -----------------------------
                    Container(
                      height: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(13),
                            child: Image.asset(
                              "assets/p8.jpeg",
                              height: 100,
                              width: 83,
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Robusta Beans",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),

                                const Text(
                                  "From Africa",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8,
                                  ),
                                ),

                                const Spacer(),

                                Row(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 30,
                                      alignment:
                                          Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(
                                            0xff191e24),
                                        borderRadius:
                                            BorderRadius
                                                .circular(7),
                                      ),
                                      child: const Text(
                                        "250gm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 12),

                                    const Text(
                                      "\$ 6.20",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8),

                                Row(
                                  children: [
                                    quantityButton(
                                      Icons.remove,
                                      decreaseRobusta,
                                    ),

                                    const SizedBox(width: 20),

                                    quantityNumber(
                                      robustaQuantity,
                                    ),

                                    const SizedBox(width: 20),

                                    quantityButton(
                                      Icons.add,
                                      increaseRobusta,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // -----------------------------
              // TOTAL + PAY
              // -----------------------------
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Price",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Row(
                        children: [
                          const Text(
                            "\$",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            " ${totalPrice.toStringAsFixed(2)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(width: 32),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PaymentPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Pay",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),

      // -----------------------------
      // BOTTOM NAVIGATION
      // -----------------------------
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.black,
        child: const Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.grey,
              size: 21,
            ),
            Icon(
              Icons.shopping_bag_rounded,
              color: Colors.orange,
              size: 21,
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
              size: 21,
            ),
            Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 21,
            ),
          ],
        ),
      ),
    );
  }
}