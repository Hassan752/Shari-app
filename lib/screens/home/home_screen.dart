// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:shari_app/models/category_model.dart';
import 'package:shari_app/models/models.dart';
import 'package:shari_app/widgets/custom_appbar.dart';
import 'package:shari_app/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shari_app/widgets/hero_carousel_card.dart';
import 'package:shari_app/widgets/widgets.dart';
import 'package:shari_app/models/product_model.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Shari'),
      bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.category
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
            SectionTitle(title: 'RECOMMENDED'),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            SectionTitle(title: 'MOST POPULAR'),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
