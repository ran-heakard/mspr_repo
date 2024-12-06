import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6F4F37), // Café moka (brun chaud)
              Color(0xFF3E2723), // Café expresso (brun très foncé)
              Color(0xFF9E7C4F), // Latte (brun clair)
              Color(0xFFCBB89C), // Crème de café (beige clair)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connexion',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),

                // Champ pour l'email avec icône
                TextField(
                  controller: emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white60),
                    filled: true,
                    fillColor: Color(0xFF212325),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Champ pour le mot de passe avec icône
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: TextStyle(color: Colors.white60),
                    filled: true,
                    fillColor: Color(0xFF212325),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white60,
                    ),
                  ),
                ),
                // Bouton pour se connecter
                SizedBox(height: 22),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Une fois connecté, rediriger vers la page des produits
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE57734),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                // Texte pour rediriger vers la page d'inscription
                SizedBox(height: 50),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/register');
                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Couleur du texte normal
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Vous n'êtes pas inscrit ? ",
                            style: TextStyle(color: Colors.white), // Reste de la phrase
                          ),
                          TextSpan(
                            text: "S'inscrire",
                            style: TextStyle(
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: [Color(0xFFE57734), Color(0xFF6F4F37)], // Dégradé sur "S'inscrire"
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
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
