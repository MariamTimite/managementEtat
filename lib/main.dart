import 'package:flutter/material.dart';
import 'package:managementetat/models/food_model.dart';
import 'package:managementetat/providers/food_provider.dart';
import 'package:managementetat/providers/panier.dart';
import 'package:managementetat/screens/details_screen.dart';
import 'package:managementetat/screens/favori_screen.dart';
import 'package:managementetat/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyFoodApp());
}

class MyFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Panier(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // home: HomePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/detail-food': (context) => DetailScreen(),
          '/favoris': (context) => FavorisScreen()
        },
      ),
    );
  }
}
