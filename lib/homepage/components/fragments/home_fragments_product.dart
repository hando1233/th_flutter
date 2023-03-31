import 'package:flutter/material.dart';

class ProductPopular extends StatelessWidget {
  const ProductPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Products',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See more',
                  style: TextStyle(fontSize: 16, color: Colors.lightGreen),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 334,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            itemCount: 17,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return const ProductsItem();
            },
          ),
        ),
      ],
    );
  }
}

class ProductsItem extends StatelessWidget {
  const ProductsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/image_2.jfif',
          width: double.infinity,
          height: 136,
          fit: BoxFit.cover,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 3, left: 2),
          child: Text(
            'Title',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 3, left: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black)),
          child: const Text(
            "\$5",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
