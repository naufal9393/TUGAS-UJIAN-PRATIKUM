import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});
  static const routeName = '/grid-view';

  @override
  Widget build(BuildContext context) {
    final items = ['Musik', 'Foto', 'Travel', 'Makanan', 'Video', 'Seni'];

    return Scaffold(
      appBar: AppBar(title: const Text('Grid View'), backgroundColor: const Color(0xFF3B5BA5)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2A2E3F),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.widgets,
                    color: Colors.blue.shade200,
                    size: 42,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    items[index],
                    style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
