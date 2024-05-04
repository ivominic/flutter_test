import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/meals/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
