import 'package:flutter/material.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/provider/recepieProvider.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/view/recipeHome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (context) => RecepieProvider()..getRecipes())
    ],
      child: MaterialApp(
        home: RecipeHome(),
      ),

    );
  }
}
