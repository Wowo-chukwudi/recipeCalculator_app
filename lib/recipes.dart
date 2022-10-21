class Recipe {
  String label;
  String imageUrl;

  Recipe({required this.label, required this.imageUrl});

  // TODO: Add List<Recipe> here

  static List<Recipe> samples = [
    Recipe(
      label: 'Chicken Stew',
      imageUrl: 'assets/chicken_stew.jpg',
    ),
    Recipe(
      label: 'Jollof Rice',
      imageUrl: 'assets/jollof.jpg',
    ),
    Recipe(
      label: 'Fried Egg',
      imageUrl: 'assets/fried_egg.jpg',
    ),
    Recipe(
      label: 'BBQ Chicken',
      imageUrl: 'assets/bbq.jpg',
    ),
    Recipe(
      label: 'Egusi Soup',
      imageUrl: 'assets/egusi.jpg',
    ),
    Recipe(
      label: 'Pizza',
      imageUrl: 'assets/pizza.jpg',
    ),
  ];
}

// TODO: Add Ingredients() here 