import 'package:flutter/material.dart';
import 'aboutus.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  final List<String> products = <String>[
    'Water Filter RO-01',
    'Brown Long sleeve Jacket T01',
    'Filter 3 steps',
    'Smart Robot Car',
    'Remote controller DC-01'
  ];

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leading icon pressed');
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Aboutus()),
                );
              },
              icon: const Icon(Icons.home)),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, int index) => const Divider(),
        itemCount: widget.products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            widget.products[index],
            style: TextStyle(fontSize: 20),
            ),
          ),
      ),
    );
  }
}
