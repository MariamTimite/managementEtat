import 'package:flutter/material.dart';
import 'package:managementetat/providers/food_provider.dart';
import 'package:managementetat/screens/details_screen.dart';
import 'package:provider/provider.dart';

class FavorisScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FavorisScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodProvider>(context);
    final favoris = provider.favoris;

return Scaffold(
  appBar: AppBar(
    
  ),
    body: ListView.builder(
    itemCount:favoris.length,
    itemBuilder: (context, index)=> ListTile(
      onTap: ()=> Navigator.pushNamed(context, DetailScreen.routeName, arguments: favoris[index].id),
      title: Text(favoris[index].nom),
      subtitle: Text(favoris[index].description),
      trailing: IconButton(
        onPressed: ()=> provider.favorisProduct(favoris[index]), 
        icon: Icon((provider.favoris.contains(favoris[index])) ? Icons.favorite : Icons.favorite_border),),
      leading: CircleAvatar(
        backgroundImage: AssetImage(favoris[index].imageUrl),
        ),
    ),
    )); }
}