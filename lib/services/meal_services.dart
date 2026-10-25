import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/meal.dart';

class MealService {
  static const String _baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future<List<Meal>> searchMeals(String query) async {
    final uri = Uri.parse('$_baseUrl/search.php?s=$query');
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception('Gagal memuat data (kode ${response.statusCode})');
    }

    final data = json.decode(response.body);
    
    if (data['meals'] == null) {
      return [];
    }

    final List mealsJson = data['meals'];
    return mealsJson.map((item) => Meal.fromJson(item)).toList();
  }
}