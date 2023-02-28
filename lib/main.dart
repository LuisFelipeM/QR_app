import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app/pages/pages.dart';
import 'package:qr_app/provider/ui_provider.dart';

void main() => runApp(const QrApp());

class QrApp extends StatelessWidget {
  const QrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new uiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home_page',
        routes: {
          'home_page': (context) => HomePage(),
          'maps_page': (context) => MapsPage(),
        },
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.green)),
      ),
    );
  }
}
