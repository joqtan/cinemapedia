import 'package:flutter/material.dart';

class CustomBottomNavigationbar extends StatelessWidget {
  const CustomBottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.home_max), label: 'Inicio'),
        BottomNavigationBarItem(icon: const Icon(Icons.label_outline), label: 'Categorías'),
        BottomNavigationBarItem(icon: const Icon(Icons.favorite_outline), label: 'Favoritos'),
      ],
    );
  }
}
