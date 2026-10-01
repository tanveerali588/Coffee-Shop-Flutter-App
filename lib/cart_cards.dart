import 'package:flutter/material.dart';
import 'cart_widgets.dart';

class CoffeeCardOne extends StatelessWidget {
  const CoffeeCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.asset(
                  "assets/p6.jpeg",
                  height: 83,
                  width: 83,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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

          sizeRow("S", "4.20"),
          const SizedBox(height: 8),
          sizeRow("M", "4.20"),
          const SizedBox(height: 8),
          sizeRow("L", "4.20"),
        ],
      ),
    );
  }
}

Widget sizeRow(String size, String price) {
  return Row(
    children: [
      sizeBox(size, 59),

      const SizedBox(width: 12),

      const Text(
        "\$",
        style: TextStyle(
          color: Colors.orange,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),

      Text(
        " $price",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),

      const Spacer(),

      quantityButton(Icons.remove),

      const SizedBox(width: 9),

      numberBox(),

      const SizedBox(width: 9),

      quantityButton(Icons.add),
    ],
  );
}

class CoffeeCardTwo extends StatelessWidget {
  const CoffeeCardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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

                Row(
                  children: [
                    sizeBox("M", 57),

                    const SizedBox(width: 18),

                    const Text(
                      "\$ 6.20",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    quantityButton(Icons.remove),
                    const SizedBox(width: 20),
                    numberBox(),
                    const SizedBox(width: 20),
                    quantityButton(Icons.add),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeeCardThree extends StatelessWidget {
  const CoffeeCardThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    sizeBox("250gm", 65),

                    const SizedBox(width: 12),

                    const Text(
                      "\$ 6.20",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    quantityButton(Icons.remove),
                    const SizedBox(width: 20),
                    numberBox(),
                    const SizedBox(width: 20),
                    quantityButton(Icons.add),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}