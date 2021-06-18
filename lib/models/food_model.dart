
import 'package:flutter/material.dart';

@immutable
class Food {
  final int id;
  final String nom;
  final String description;
  final double prix;
  final bool estQuilEstEnFavoris;
  final String imageUrl;
  const Food({this.id, this.nom, this.description, this.prix, this.estQuilEstEnFavoris = false, this.imageUrl});
}