import 'package:flutter/material.dart';
import 'package:metarizz/helper.dart';
import 'package:metarizz/screens/startscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(
        ThemeData(
          useMaterial3: true,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Helperfnc.darkBGColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Helperfnc.darkBGColor,
          ),
        ),
        Helperfnc.darkInformationCardColor,
        Helperfnc.informationCardTextColor2,
        Helperfnc.paragraphTextColor2,
      ),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSearchScreen = false;
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      theme: themeNotifier.getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Metarizz Assignment',
      home: const StartScreen(),
    );
  }
}
