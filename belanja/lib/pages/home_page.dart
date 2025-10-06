import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:belanja/widgets/app_footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Gula Pasir Premium',
      price: 15000,
      image: 'images/sugar.png',
      stock: 25,
      rating: 4.7,
    ),
    Item(
      name: 'Garam Halus',
      price: 8000,
      image: 'images/salt.png',
      stock: 18,
      rating: 4.3,
    ),
    Item(
      name: 'Minyak Goreng',
      price: 25000,
      image: 'images/oil.png',
      stock: 12,
      rating: 4.8,
    ),
    Item(
      name: 'Tepung Terigu',
      price: 12000,
      image: 'images/flour.png',
      stock: 8,
      rating: 4.5,
    ),
    Item(
      name: 'Beras Premium',
      price: 45000,
      image: 'images/rice.png',
      stock: 30,
      rating: 4.9,
    ),
    Item(
      name: 'Kecap Manis',
      price: 18000,
      image: 'images/soy-sauce.png',
      stock: 15,
      rating: 4.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          '🛒 SuperMarket',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Promo
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.deepPurple[50],
            child: Row(
              children: [
                Icon(Icons.local_offer, color: Colors.deepPurple),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Gratis ongkir untuk pembelian di atas Rp 50.000!',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Product Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ProductCard(
                    item: item,
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                  );
                },
              ),
            ),
          ),
          
          // Footer
          const AppFooter(),
        ],
      ),
      
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add_shopping_cart, color: Colors.white),
      ),
    );
  }
}