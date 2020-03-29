import 'package:flutter/material.dart';

@immutable
class Goal {
  final String id;
  final String name;
  final String description;
  final int price;

  Goal(this.id, this.name, this.description, this.price);
}