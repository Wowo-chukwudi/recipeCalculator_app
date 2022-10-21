import 'package:flutter/material.dart';

import 'recipes.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  //TODO: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 300.0,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.imageUrl)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),
          ),
          //TODO: Add Expanded
          //TODO: Add Slider here
        ],
      )),
    );
  }
}
