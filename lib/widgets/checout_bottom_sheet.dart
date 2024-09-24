import 'package:devivery/screens/order_success_page.dart';
import 'package:flutter/material.dart';

class CheckoutBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.6,
        maxChildSize: 0.7,
        minChildSize: 0.3,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                _buildRow(context, 'Delivery', 'Select Method',
                    hasIcon: true,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color.fromARGB(255, 3, 66, 1),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                _buildRow(context, 'Payment', '', hasIcon: true),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(height: 20),
                _buildRow(context, 'Subtotal', '\$12.99'),
                _buildRow(context, 'Delivery Fee', '\$3.20'),
                _buildRow(context, 'Total', '\$16.10', isBold: true),
                const SizedBox(height: 20),
                const Divider(thickness: 1),
                const Text.rich(
                  TextSpan(
                    text: 'By placing an order you agree to our ',
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'Terms And Conditions',
                        style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, OrderSuccessPage.routeName);
                      // Place order action
                    },
                    child: const Text(
                      'Place Order',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(BuildContext context, String label, String value,
      {bool isBold = false, bool hasIcon = false, Icon? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: 16,
            ),
          ),
          hasIcon
              ? Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                          fontWeight:
                              isBold ? FontWeight.bold : FontWeight.normal,
                          fontSize: 16,
                          color: Color.fromARGB(255, 2, 97, 7)),
                    ),
                    const SizedBox(width: 8),
                    icon != null
                        ? icon
                        : const Icon(Icons.payment,
                            color:
                                Colors.orange), // Mastercard logo placeholder
                  ],
                )
              : Text(
                  value,
                  style: TextStyle(
                      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                      fontSize: 16,
                      color: Color.fromARGB(255, 2, 97, 7)),
                ),
        ],
      ),
    );
  }
}
