import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.brand,
  });

  final String imageUrl;
  final String productName;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 30,
                start: 20,
                end: 20,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    productName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(brand, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ProductHeader(
          imageUrl:
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=1310&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          productName: 'Produit',
          brand: 'Marque',
        ),
      ),
    );
  }
}
