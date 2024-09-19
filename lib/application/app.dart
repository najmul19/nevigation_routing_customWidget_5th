
import 'package:flutter/material.dart';
import 'package:navigation_routing_custom_widget/screen/builder_screen.dart';
import 'package:navigation_routing_custom_widget/screen/home.dart';
import 'package:navigation_routing_custom_widget/screen/home2.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home:  Home2(),

      themeMode: ThemeMode.light,

      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.amber,
          ),
          brightness: Brightness.light,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,

                elevation: 20,
              )
          )
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,

      ),
    );
  }
}