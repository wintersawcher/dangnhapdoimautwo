import 'package:flutter/material.dart';
class Student {
  late final String id;
  late final String name;
  late final String address;
  late final double phone;
  late final String imageUrl;

  late bool isFavorite;

  Student({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.imageUrl,
    this.isFavorite =false,
  });
  void toggleFavoriteStatus(){
    isFavorite = !isFavorite;
    //notifyListeners();
  }
}