import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar Premium', 
      price: 15000,
      imageUrl: 'assets/lucu.jpg',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Salt Himalaya', 
      price: 8000,
      imageUrl: 'assets/lucu.jpg',
      stock: 30,
      rating: 4.2,
    ),
    Item(
      name: 'Rice Premium', 
      price: 25000,
      imageUrl: 'assets/lucu.jpg',
      stock: 25,
      rating: 4.8,
    ),
    Item(
      name: 'Oil Cooking', 
      price: 18000,
      imageUrl: 'assets/lucu.jpg',
      stock: 40,
      rating: 4.3,
    ),
    Item(
      name: 'Flour Wheat', 
      price: 12000,
      imageUrl: 'assets/lucu.jpg',
      stock: 35,
      rating: 4.1,
    ),
    Item(
      name: 'Milk Fresh', 
      price: 22000,
      imageUrl: 'assets/lucu.jpg',
      stock: 20,
      rating: 4.6,
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace Belanja'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple,
              Colors.white,
            ],
            stops: [0.1, 0.1],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ProductCard(item: items[index]);
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey[100],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, color: Colors.deepPurple),
                  SizedBox(width: 8),
                  Text(
                    'Nahdia Putri Safira-2341720015',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}