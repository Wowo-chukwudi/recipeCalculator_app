class Recipe {
  String label;
  String imageUrl;

  Recipe({
    required this.label,
    required this.imageUrl,
    required this.servings,
    required this.ingredients,
  });

  int servings;
  List<Ingredients> ingredients;

  // This is the list of recipes

  static List<Recipe> samples = [
    Recipe(
        label: 'Chicken Stew',
        imageUrl: 'assets/chicken_stew.jpg',
        servings: 4,
        ingredients: [
          Ingredients(quantity: 1, measure: 'kilo', name: 'Chicken'),
          Ingredients(
              quantity: 5, measure: 'cups', name: 'Blended Tomatoe & Pepper'),
          Ingredients(quantity: 2, measure: 'cups', name: 'Oil'),
          Ingredients(quantity: 4, measure: '', name: 'Condiments'),
        ]),
    Recipe(
        label: 'Jollof Rice',
        imageUrl: 'assets/jollof.jpg',
        servings: 8,
        ingredients: [
          Ingredients(quantity: 1, measure: 'kilo', name: 'Chicken'),
          Ingredients(
              quantity: 5, measure: 'cups', name: 'Blended Tomatoe & Pepper'),
          Ingredients(quantity: 2, measure: 'cups', name: 'Rice'),
          Ingredients(quantity: 4, measure: '', name: 'Condiments'),
        ]),
    Recipe(
        label: 'Fried Egg',
        imageUrl: 'assets/fried_egg.jpg',
        servings: 2,
        ingredients: [
          Ingredients(quantity: 4, measure: '', name: 'Eggs'),
          Ingredients(
              quantity: 1, measure: 'cups', name: 'Blended Tomatoe & Pepper'),
          Ingredients(quantity: 1, measure: 'tablespoon', name: 'Oil'),
          Ingredients(quantity: 4, measure: '', name: 'Condiments'),
        ]),
    Recipe(
        label: 'BBQ Chicken',
        imageUrl: 'assets/bbq.jpg',
        servings: 4,
        ingredients: [
          Ingredients(quantity: 1, measure: 'kilo', name: 'Chicken'),
          Ingredients(quantity: 2, measure: 'cups', name: 'Oil'),
          Ingredients(quantity: 4, measure: '', name: 'Condiments'),
        ]),
    Recipe(
        label: 'Egusi Soup',
        imageUrl: 'assets/egusi.jpg',
        servings: 5,
        ingredients: [
          Ingredients(quantity: 1, measure: 'cup', name: 'Egusi'),
          Ingredients(
              quantity: 5, measure: 'cups', name: 'Blended Tomatoe & Pepper'),
          Ingredients(quantity: 2, measure: 'cups', name: 'Oil'),
          Ingredients(quantity: 4, measure: '', name: 'Condiments'),
        ]),
  ];
}

// TODO: Add Ingredients() here

class Ingredients {
  double quantity;
  String measure;
  String name;

  Ingredients({
    required this.quantity,
    required this.measure,
    required this.name,
  });
}
