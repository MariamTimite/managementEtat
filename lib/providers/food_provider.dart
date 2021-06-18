import 'package:flutter/material.dart';
import 'package:managementetat/models/food_model.dart';

class FoodProvider with ChangeNotifier {
  List<Food> _item = [
    Food(
      id: 1,
      nom: "mighty crepe",
      prix: 5000,
      imageUrl: "asset/images/mighty-crepee.jpeg",
      description:
          "crepe, filled with brownies, cream puffs, cream cheese and strawberries, served with all three of our signature chocolate flavors on top and sprinkled with c...",
    ),
    Food(
      id: 2,
      nom: "Alaskan waffle",
      prix: 4500,
      imageUrl: "asset/images/alscan.png",
      description:
          "waffle, topped with chocolate caramel cream, toasted meringue, hazelnut chocolate chunks, served with your choice of ice cream and chocolate",
    ),
    Food(
      id: 3,
      nom: "cream puff pyramid",
      prix: 5500,
      imageUrl: "asset/images/cream-puff-pyramid.jpeg",
      description: "cream puffs, served with your choice of chocolate topping",
    ),
    Food(
      id: 4,
      nom: "fettuccine crepe",
      prix: 3000,
      imageUrl: "asset/images/fettuccine-crepe.jpeg",
      description:
          "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping",
    ),
    Food(
      id: 5,
      nom: "fettuccine crepe",
      prix: 3000,
      imageUrl: "asset/images/fettuccine-crepe.jpeg",
      description:
          "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping",
    ),
    Food(
      id: 6,
      nom: "fettuccine crepe",
      prix: 3000,
      imageUrl: "asset/images/fettuccine-crepe.jpeg",
      description:
          "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping",
    ),
    Food(
      id: 7,
      nom: "fettuccine crepe",
      prix: 3000,
      imageUrl: "asset/images/fettuccine-crepe.jpeg",
      description:
          "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping",
    ),
    Food(
      id: 8,
      nom: "fettuccine crepe",
      prix: 3000,
      imageUrl: "asset/images/fettuccine-crepe.jpeg",
      description:
          "crepe, cut into fine ribbons, served with your choice of ice cream and chocolate topping",
    ),
  ];

  List<Food> get items => [..._item];

// variable privé

List <Food> _favoris =[];
List<Food> get favoris=> [..._favoris];

void favorisProduct (Food ajoutFood){

  var index = _favoris.indexOf(ajoutFood);
   if (index>=0) {
      _favoris.removeAt(index);
       notifyListeners();
       print(index);
     
   } else { 
      _favoris.add(ajoutFood);
      notifyListeners();
      print(index);
   }
}

 }
 