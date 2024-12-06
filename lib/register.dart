import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
                  'Créer un nouveau compte',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Champ pour le prénom
                TextField(
                  controller: firstNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Prénom',
                    hintStyle: TextStyle(color: Colors.white60),
                    filled: true,
                    fillColor: Color(0xFF212325),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Champ pour le nom
                TextField(
                  controller: lastNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Nom',
                    hintStyle: TextStyle(color: Colors.white60),
                    filled: true,
                    fillColor: Color(0xFF212325),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Champ pour l'email
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

                // Champ pour le mot de passe
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
                SizedBox(height: 16),

                // Champ pour confirmer le mot de passe
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Confirmer le mot de passe',
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
                SizedBox(height: 22),

                // Bouton pour s'inscrire
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Ici vous pouvez ajouter votre logique d'inscription
                      // Une fois l'utilisateur inscrit, le rediriger vers la page de connexion
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE57734),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Créer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // Texte pour rediriger vers la page de connexion avec "Se connecter" en dégradé
                SizedBox(height: 30),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
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
                            text: "Vous êtes déjà inscrit ? ",
                            style: TextStyle(color: Colors.white), // Reste de la phrase
                          ),
                          TextSpan(
                            text: "Se connecter",
                            style: TextStyle(
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: [Color(0xFFE57734), Color(0xFF6F4F37)], // Dégradé sur "Se connecter"
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
