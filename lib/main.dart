import 'package:flutter/material.dart';
void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {'name': 'Apples', 'icon': Icons.shopping_cart},
    {'name': 'Bananas','icon': Icons.shopping_cart},
    {'name': 'Bread', 'icon': Icons.shopping_cart},
    {'name': 'Milk', 'icon': Icons.shopping_cart},
    {'name': 'Eggs', 'icon': Icons.shopping_cart},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Icon(item['icon']),
            title: Text(item['name']),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
