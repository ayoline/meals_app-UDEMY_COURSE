import 'package:flutter/material.dart';

import './category_meals_screen.dart';
import './categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        // primarySwatch: Colors.pink,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
          error: Colors.red,
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      home: const CategoriesScreen(),
      routes: {
        '/category-meals': (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
