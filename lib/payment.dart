import 'package:flutter/material.dart';
import 'credit_card.dart';
import 'wallet.dart';
import 'google_pay.dart';
import 'apple_pay.dart';
import 'amazon_pay.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selected = "Credit Card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Payment",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 10),

              Expanded(
                child: ListView(
                  children: [
                    payment(
                      "Credit Card",
                      Icons.credit_card,
                    ),
                    payment(
                      "Wallet",
                      Icons.account_balance_wallet,
                    ),
                    payment(
                      "Google Pay",
                      Icons.g_mobiledata,
                    ),
                    payment(
                      "Apple Pay",
                      Icons.apple,
                    ),
                    payment(
                      "Amazon Pay",
                      Icons.shopping_bag_outlined,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  const Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "\$ 4.20",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: openPaymentPage,
                        child: Text(
                          "Continue",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }

  void openPaymentPage() {
    Widget page;

    if (selected == "Credit Card") {
      page = const CreditCardPage();
    } else if (selected == "Wallet") {
      page = const WalletPage();
    } else if (selected == "Google Pay") {
      page = const GooglePayPage();
    } else if (selected == "Apple Pay") {
      page = const ApplePayPage();
    } else {
      page = const AmazonPayPage();
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    );
  }

  Widget payment(
    String title,
    IconData icon,
  ) {
    bool isSelected = selected == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = title;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected
                ? Colors.orange
                : Colors.grey[800]!,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: const Color(0xff191e24),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: Colors.orange,
                size: 23,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_off,
              color: isSelected
                  ? Colors.orange
                  : Colors.grey,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}