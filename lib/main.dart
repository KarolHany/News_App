import 'package:flutter/material.dart';
import 'package:news_app_ths/screens/splash_screen.dart';
import 'package:news_app_ths/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themedata,
    );
  }
}
