import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/single_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  List<Map<String, dynamic>> products = [
    {
      'img': 'Latte',
      'name': 'Latte',
      'description': 'Un café crémeux et doux.',
      'price': 4.99,
      'stock': 25,
    },
    {
      'img': 'expresso',
      'name': 'Expresso',
      'description': 'Un café fort pour les amateurs de saveurs intenses.',
      'price': 3.99,
      'stock': 15,
    },
    {
      'img': 'black_coffee',
      'name': 'Café Noir',
      'description': 'Un café simple pour une expérience classique.',
      'price': 2.99,
      'stock': 30,
    },
    {
      'img': 'Cold-Coffee',
      'name': 'Café Froid',
      'description': 'Un café glacé pour se rafraîchir.',
      'price': 5.49,
      'stock': 10,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < products.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // Naviguer vers la page SingleItemScreen avec toutes les informations du produit
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleItemScreen(
                          img: products[i]['img'],  // Nom de l'image
                          name: products[i]['name'],  // Nom du produit
                          description: products[i]['description'],  // Description
                          price: products[i]['price'],  // Prix
                          stock: products[i]['stock'],  // Stock
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${products[i]['img']}.jpg",  // Chemin de l'image
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[i]['name'],  // Nom du produit
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "meilleur café",  // Texte générique, vous pouvez personnaliser si nécessaire
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Affichage du prix
                      Text(
                        "\$${products[i]['price'].toStringAsFixed(2)}",  // Affichage du prix formaté
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
