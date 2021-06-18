import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart';

class DetailScreen extends StatelessWidget {
  static const routeName= '/detail-food';
  @override
  Widget build(BuildContext context) {
    final foodId = ModalRoute.of(context).settings.arguments as int;
    final food = Provider.of<FoodProvider>(context).items.firstWhere((element) => element.id == foodId);

    return Scaffold(
      appBar: AppBar( title: Text(food.id.toString()),
      ),
body: Column(
  children: [
    Image.asset(food.imageUrl),
    Text(food.nom, style: TextStyle(fontWeight:FontWeight.bold) ,),
    Text(food.description)
  ],
),
    );
  }
}