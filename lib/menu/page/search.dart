import 'package:flutter/material.dart';
import '../item/item_page.dart';
import '../item/items.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final controller = TextEditingController();
  List<Item> items = allItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              // Kolom Search
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hoverColor: Colors.grey.shade100,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Cari Barang',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: searchData,
            ),
          ),
          Expanded(
            // List Data
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];

                return ListTile(
                  leading: Image.network(
                    item.urlImage,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(item.title),
                  subtitle: Text(item.subtitle),

                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage(item: item),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void searchData(String query) {
    final suggestions = allItems.where((item){
      final itemTitle = item.title.toLowerCase();
      final input = query.toLowerCase();

      return itemTitle.contains(input);
    }).toList();

    setState(() => items = suggestions);
  }
}
