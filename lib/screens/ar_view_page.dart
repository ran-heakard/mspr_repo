import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class ARViewPage extends StatefulWidget {
  @override
  _ARViewPageState createState() => _ARViewPageState();
}

class _ARViewPageState extends State<ARViewPage> {
  ArCoreController? arCoreController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    arCoreController?.dispose();
    super.dispose();
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _addCoffeeProduct(controller);
  }

  // Cette méthode permet d'ajouter un modèle 3D de café dans la scène AR
  void _addCoffeeProduct(ArCoreController controller) async {
    final object = await ArCoreReferenceNode(
      name: "coffee_model",
      object3DFileName: "assets/coffee_model.glb", // Remplacez par le chemin de votre modèle
      position: Vector3(0, 0, -1),
      scale: Vector3(0.1, 0.1, 0.1), // Redimensionner le modèle si nécessaire
    );

    controller.addArCoreNode(object);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visualiser le produit en AR")),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }
}
