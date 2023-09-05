import 'package:flutter/material.dart';
import 'package:flutter_themeswitch_provider/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Switch'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: provider.toggleTheme, 
          child: Text('Toggle Theme')),
      ),
    );
  }
}