// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final int price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];
  static List<Product> products = [
    Product(
      name: 'T-Shirt',
      category: 'Clothes',
      imageUrl:
          'https://images.pexels.com/photos/5746087/pexels-photo-5746087.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      price: 90,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Jeans',
      category: 'Clothes',
      imageUrl:
          'https://images.pexels.com/photos/52518/jeans-pants-blue-shop-52518.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      price: 300,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Watch',
      category: 'Devices',
      imageUrl:
          'https://images.pexels.com/photos/4025610/pexels-photo-4025610.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      price: 1250,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Perfume',
      category: 'Accessories',
      imageUrl:
          'https://images.pexels.com/photos/7400855/pexels-photo-7400855.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      price: 500,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
