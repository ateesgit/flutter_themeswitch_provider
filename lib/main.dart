import 'package:flutter/material.dart';
import 'package:flutter_themeswitch_provider/provider/theme_provider.dart';
import 'package:flutter_themeswitch_provider/screens/home.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    //  final provider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context)=>ThemeProvider(),
      builder: (context,child){
         final provider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:provider.theme,
        // theme: ThemeData.light(),
        home: HomePage(),
      );
      },
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   theme:provider.theme,
      //   // theme: ThemeData.light(),
      //   home: HomePage(),
      // ),
    );
  }
}