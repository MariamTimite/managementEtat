import 'package:flutter/material.dart';
import 'package:managementetat/models/article_du_panier.dart';
import 'dart:core';

class Panier with ChangeNotifier{

  Map<String, ArticlePanier>  _panier = {};
  Map<String, ArticlePanier> get panier => {..._panier};

  void addArticleInPanier({String productId, double price, String titre, String image}){
    

    bool isExiste = _panier.containsKey(productId);
    if (isExiste) { _panier.update(productId.toString(), (value) => ArticlePanier(value.id,value.productId,value.price,value.quantity++,value.titre ,value.image)); 
    } else {
      _panier.putIfAbsent(productId.toString(),()=> ArticlePanier(DateTime.now().minute.toString(), productId, price, 1, titre,image));
    }
    notifyListeners();
    print(_panier.length);
    print(_panier);
  }
}