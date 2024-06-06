import 'package:flutter/cupertino.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/service/receipeService.dart';

import '../model/recepieModel.dart';

class RecepieProvider extends ChangeNotifier {
  List<Recipe> _recipes = [];
  List<Recipe> _filteredRecipes = [];
  List<Recipe> get recipes =>
      _filteredRecipes.isNotEmpty ? _filteredRecipes : _recipes;

  Future<void> getRecipes() async {
    try {
      Recepie recepie = await RecipeService().fetchRecipes();
      _recipes = recepie.recipes ?? [];
      _filteredRecipes = _recipes;//initialize filtered recipes with all recipes
      notifyListeners();
    }catch(e){
      throw Exception("Failed to load recipes : $e");
    }
  }

  void searchRecipes(String query){
    _filteredRecipes = _recipes.where((recipe){
      return recipe.name!.toLowerCase()
          .contains(query.toLowerCase());
    }).toList();
    notifyListeners();
  }
}
