import 'package:devivery/home.dart';
import 'package:devivery/product_detail.dart';
import 'package:flutter/material.dart';

import 'order_success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.z
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == HomeScreen.routeName) {
          return MaterialPageRoute(builder: (context) {
            return HomeScreen();
          });
        }
        if (settings.name == OrderSuccessPage.routeName) {
          return MaterialPageRoute(builder: (context) {
            return OrderSuccessPage();
          });
        }
        if (settings.name == ProductDetailsPage.routeName) {
          return MaterialPageRoute(builder: (context) {
            return ProductDetailsPage(
              product: settings.arguments as Product,
            );
          });
        }
      },
    );
  }
}
