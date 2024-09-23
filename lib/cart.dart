import 'package:devivery/checout_bottom_sheet.dart';
import 'package:devivery/home.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...demoProducts
          .sublist(0, 4)
          .map((product) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Container(
                      // margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(product.images[0]))),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .66,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        product.title,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 1, 32, 2)),
                                      ),
                                      Icon(
                                        Icons.cancel,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text(
                                  "1kg price",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 146, 146, 146)),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .24,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: const Icon(Icons.remove),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 216, 216, 216)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: const Color.fromARGB(
                                                            255, 255, 255, 255)
                                                        .withOpacity(
                                                            0.1), // Shadow color with opacity
                                                    spreadRadius:
                                                        1, // Spread of the shadow
                                                    blurRadius:
                                                        10, // Blurring effect
                                                    offset: const Offset(0,
                                                        1), // Horizontal and vertical shadow offset
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Text("2"),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.green,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 216, 216, 216)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: const Color.fromARGB(
                                                            255, 255, 255, 255)
                                                        .withOpacity(
                                                            0.1), // Shadow color with opacity
                                                    spreadRadius:
                                                        1, // Spread of the shadow
                                                    blurRadius:
                                                        10, // Blurring effect
                                                    offset: const Offset(0,
                                                        1), // Horizontal and vertical shadow offset
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "\$23.99",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                204, 50, 62, 32)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (demoProducts.indexOf(product) ==
                        demoProducts.length - 1)
                      const Divider(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ))
          .toList(),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Text(
              "\$12.22",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 112, 5)),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.0)),
                ),
                builder: (context) => CheckoutBottomSheet(),
              );
            },
            child: Text(
              "Go to checkout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      )
    ]);
  }
}
