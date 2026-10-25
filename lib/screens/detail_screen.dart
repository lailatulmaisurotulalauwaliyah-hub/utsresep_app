import 'package:flutter/material.dart';
import '../models/meal.dart';

class DetailScreen extends StatelessWidget {
  final Meal meal;

  const DetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              meal.thumbnail,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const SizedBox(
                height: 250,
                child: Center(child: Icon(Icons.restaurant, size: 80)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      Chip(label: Text(meal.category)),
                      if (meal.area.isNotEmpty) Chip(label: Text(meal.area)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Bahan-bahan',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...meal.ingredients.map(
                        (item) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text('• $item'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Cara Memasak',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(meal.instructions),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}