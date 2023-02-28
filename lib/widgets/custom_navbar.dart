import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app/pages/pages.dart';
import 'package:qr_app/provider/ui_provider.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final UIProvider = Provider.of<uiProvider>(context);

    final currentIndex = UIProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => UIProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Maps',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.find_in_page_sharp),
          label: 'URL',
        )
      ],
    );
  }
}
