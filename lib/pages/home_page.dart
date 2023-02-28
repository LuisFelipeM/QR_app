import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app/models/scan_model.dart';
import 'package:qr_app/pages/pages.dart';
import 'package:qr_app/provider/ui_provider.dart';
import 'package:qr_app/widgets/widgets.dart';

import '../provider/db_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('History'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {}),
        ],
      ),
      body: _HomeBody(),
      bottomNavigationBar: CustomNavBar(),
      floatingActionButton: SearchButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final UIProvider = Provider.of<uiProvider>(context);
    // Change value to change the page
    final int currentIndex = UIProvider.selectedMenuOpt;

    // Temp
    final tempScan =
        new ScanModel(value: 'http://google,com', id: 01, type: 'URL');
    DBProvider.db.getScanId(1).then((scan) => print(scan?.value));

    switch (currentIndex) {
      case 0:
        return MapsPage();
      case 1:
        return UrlPage();
      default:
        return MapsPage();
    }
  }
}
