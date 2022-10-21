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

  int _sliderVal = 1;

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

          //Added an Expanded Widget to display ingredients list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredients = widget.recipe.ingredients[index];

                return Text(
                    '${ingredients.quantity * _sliderVal} ${ingredients.measure} ${ingredients.name}');
              },
            ),
          ),

          //A Slider to update the amount of servings
          Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              }),
        ],
      )),
    );
  }
}
