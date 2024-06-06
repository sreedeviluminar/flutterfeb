import 'package:flutter/material.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/provider/recepieProvider.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:provider/provider.dart';

import '../widgets/recipeGridView.dart';
import '../widgets/recipeSearch.dart';

class RecipeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var recepieProvider = Provider.of<RecepieProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Food Recipes",
            style: MyTextThemes.textHeading,
          ),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
                onPressed: () async {
                  final String? query = await showSearch(
                      context: context, delegate: RecipeSearch());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: recepieProvider.recipes.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              )
            : LayoutBuilder(builder: (context, constrains) {
                if (constrains.maxWidth >= 600) {
                  return RecipeGridView(
                      recepieProvider.recipes, 4, constrains.maxWidth);
                } else if (constrains.maxWidth >= 400) {
                  return RecipeGridView(
                      recepieProvider.recipes, 2, constrains.maxWidth);
                } else {
                  return RecipeGridView(
                      recepieProvider.recipes, 1, constrains.maxWidth);
                }
              }));
  }
}
