import 'package:flutter/material.dart';
import 'package:meals2/screens/categories.dart';
import 'package:meals2/screens/meals.dart';
import 'package:meals2/models/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Meal> _favoriteMeals = [];

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    setState(() {
      if (isExisting) {
        _favoriteMeals.remove(meal);
      } else {
        _favoriteMeals.add(meal);
      }
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isExisting ? 'Meal removed from favorites.' : 'Marked as a favorite!'),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pick your category'),
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 120, 20, 60),
            labelColor: Color.fromARGB(255, 120, 20, 60),
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.fastfood), text: 'Categories'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(onToggleFavorite: _toggleMealFavoriteStatus),
            MealsScreen(
              title: 'Your Favorites',
              meals: _favoriteMeals, 
              onToggleFavorite: _toggleMealFavoriteStatus,
            ),
          ],
        ),
      ),
    );
  }
}