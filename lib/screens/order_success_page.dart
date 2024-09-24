import 'package:devivery/screens/home.dart';
import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  static const String routeName = "OrderSuccessPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Success Icon
            SizedBox(
              height: MediaQuery.of(context).size.height * .25,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 150,
              ),
            ),
            SizedBox(height: 20),

            // Order Accepted Text
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Text(
                'Your Order has been accepted',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),

            // Additional Description
            Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Text(
                'Your items have been placed and are on their way to being processed',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2),

            // Track Order Button
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.routeName, (_) => false);
                  // Handle track order action
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
