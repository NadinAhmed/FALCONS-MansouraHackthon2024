import 'package:devfest/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar', 'AE'), // Set the language to Arabic (UAE)
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'AE'), // Add Arabic support
      ],
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

