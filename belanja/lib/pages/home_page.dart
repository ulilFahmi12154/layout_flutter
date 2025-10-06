import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

  void _onProductTap(BuildContext context, Item item) {
    // Menggunakan GoRouter untuk navigasi
    context.pushNamed('item', extra: item);
    
    // Atau bisa juga menggunakan:
    // context.push('/item', extra: item);
  }

  void _onSearchTap(BuildContext context) {
    showSearch(
      context: context,
      delegate: ProductSearchDelegate(items: items),
    );
  }

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
            onPressed: () => _onSearchTap(context),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Bisa ditambahkan navigasi ke cart page nanti
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fitur keranjang akan segera hadir!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
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
                    onTap: () => _onProductTap(context, item),
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
        onPressed: () {
          context.pushNamed('home'); // Navigasi ke home (refresh)
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.home, color: Colors.white),
      ),
    );
  }
}

// Search Delegate untuk fitur pencarian
class ProductSearchDelegate extends SearchDelegate {
  final List<Item> items;

  ProductSearchDelegate({required this.items});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = items.where((item) => 
      item.name.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return _buildSearchResults(results, context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = items.where((item) => 
      item.name.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return _buildSearchResults(suggestions, context);
  }

  Widget _buildSearchResults(List<Item> results, BuildContext context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final item = results[index];
        return ListTile(
          leading: Hero(
            tag: item.image,
            child: Image.asset(
              item.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(item.name),
          subtitle: Text('Rp ${item.price}'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            context.pushNamed('item', extra: item);
          },
        );
      },
    );
  }
}