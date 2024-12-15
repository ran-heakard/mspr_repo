import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ar_view_page.dart'; // Importez la page AR

class SingleItemScreen extends StatelessWidget {
  final String img;
  final String name;
  final String description;
  final double price;
  final int stock;

  SingleItemScreen({
    required this.img,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "images/$img.jpg", // Affichage de l'image du produit
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Affichage du nom du produit
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 25),
                      // Affichage de la description du produit
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 25),
                      // Affichage du prix du produit
                      Text(
                        "Prix: \$${price.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Affichage du stock du produit
                      Text(
                        "Stock: $stock",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Bouton pour ajouter à la carte
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 54, 56),
                              ),
                              child: Text(
                                "Ajouter à la carte",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            // Bouton pour afficher la réalité augmentée
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFE57734),
                              ),
                              child: InkWell(
                                onTap: () {
                                  // Naviguer vers la page AR lors du clic
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ARViewPage()),
                                  );
                                },
                                child: Icon(
                                  CupertinoIcons.cube_box,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
