// grid_view_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('Grid of Items')),
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items in each row
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: model.items.length,
              itemBuilder: (context, index) {
                final item = model.items[index];
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(item.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(item.description, textAlign: TextAlign.center),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
