import 'package:flutter/material.dart';
import 'package:managementetat/providers/food_provider.dart';
import 'package:managementetat/providers/panier.dart';
import 'package:managementetat/screens/details_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// METHODE 1

  var menuItem = ["Produit", "favoris"];
  bool decision = true;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<FoodProvider>(context);
    final itemName = product.items;

    final articlPanier= Provider.of<Panier>(context);
    

    // final provider = Provider.of<FoodProvider>(context);
    // final food = provider.items;
    // final favoris = provider.favoris;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, "/favoris");
          },
        ),
// appBar: AppBar(
//   actions: [
//    PopupMenuButton(
//      onSelected: (value){

//      setState(() {
//         if(value == "Produit"){
//          decision = true;
//        }else{
//          decision = false;
//        }
//       });

//       // SUITE
//         print(decision);
//      },
//   child: Center(child: Text('click here')),
//   itemBuilder: (context) {
//     return menuItem.map((e) => PopupMenuItem(child: Text(e), value: e,)).toList();
//   },),],
// ),
//    body: decision ? ListView.builder(
//   itemCount:food.length,
//   itemBuilder: (context, index)=> ListTile(
//     onTap: ()=> Navigator.pushNamed(context, DetailScreen.routeName, arguments: food[index].id),
//     title: Text(food[index].nom),
//     subtitle: Text(food[index].description),
//     trailing: IconButton(
//       onPressed: ()=> provider.favorisProduct(food[index]),
//       icon: Icon((provider.favoris.contains(food[index])) ? Icons.favorite : Icons.favorite_border),),
//     leading: CircleAvatar(
//       backgroundImage: AssetImage(food[index].imageUrl),
//       ),
//   ),

//    ): ListView.builder(
//   itemCount:favoris.length,
//   itemBuilder: (context, index)=> ListTile(
//     onTap: ()=> Navigator.pushNamed(context, DetailScreen.routeName, arguments: favoris[index].id),
//     title: Text(favoris[index].nom),
//     subtitle: Text(favoris[index].description),
//     trailing: IconButton(
//       onPressed: ()=> provider.favorisProduct(favoris[index]),
//       icon: Icon((provider.favoris.contains(favoris[index])) ? Icons.favorite : Icons.favorite_border),),
//     leading: CircleAvatar(
//       backgroundImage: AssetImage(favoris[index].imageUrl),
//       ),
//   ),

//    )
        appBar: AppBar(
          title: Text('deepndeep'),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(articlPanier.panier.length.toString()),
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
                itemCount: itemName.length,
            itemBuilder: (context, index) {
              return GridTile(
                child: Image.asset(itemName[index].imageUrl),
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  trailing: IconButton(icon: Icon(Icons.shopping_cart),
                  onPressed: (){
                    articlPanier.addArticleInPanier(productId: itemName[index].id.toString(), price: itemName[index].prix, titre: itemName[index].description,image: itemName[index].imageUrl );
                  },),
                  leading: IconButton(icon: product.favoris.contains(itemName[index]) ? Icon(Icons.favorite): Icon(Icons.favorite_border
                  ),onPressed: (){
                    product.favorisProduct(itemName[index]);
                  }),
                  title: Text(itemName[index].nom),
                ),
                 
                );
            }));
  }
}
