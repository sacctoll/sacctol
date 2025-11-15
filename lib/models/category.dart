import 'menu_item.dart';
import 'adds_item.dart';

class Category {
  final String imageUrl;
  final String name;
  final String description;
  final List<MenuItem> ourMenuItems;
  final List<AddsItem> addsItems;

  Category({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.ourMenuItems,
    required this.addsItems,
  });
}