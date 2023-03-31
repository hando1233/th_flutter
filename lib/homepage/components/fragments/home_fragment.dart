import 'package:flutter/material.dart';
import 'home_fragment_categories.dart';
import 'home_fragments_product.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CategoriesStore(),
              ProductPopular(),
            ],
          ),
        ),
      ),
    );
  }
}
