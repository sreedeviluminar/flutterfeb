import 'package:flutter/material.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/model/recepieModel.dart';
import 'package:flutterfeb/api%20integration/foodRecepie%20api%20using%20http%20and%20provider/provider/recepieProvider.dart';
import 'package:provider/provider.dart';

class RecipeSearch extends SearchDelegate<String> {
  //to customize search text field
  RecipeSearch() :
        super(searchFieldLabel: "Enter Search Text");

  ///methods builds the actions for the appbar,eg: if
  ///it is a clear button that clears search query
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  ///this methods builds a leading widget for the appbar
  ///commonly a back button to close the search
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: const Icon(Icons.arrow_back));
  }

  ///this methods shows the result of search query,
  ///here it displays the search query itself
  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  /// this method shows the suggestion while typing ,
  /// filters the search results list based on the query and
  /// displays the matching results
  @override
  Widget buildSuggestions(BuildContext context) {
    final recipeProvider = Provider.of<RecepieProvider>(context);
    final List<Recipe> suggestions = query.isEmpty
        ? []
        : recipeProvider.recipes.where((recipe) {
            return recipe.name!.toLowerCase()
                .contains(query.toLowerCase());
          }).toList();
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index].name ?? ""),
            onTap: () {
              close(context, suggestions[index].name ?? "");
            },
          );
        });
  }
}
