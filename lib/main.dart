import 'package:flutter/material.dart';
import 'package:res_tables/fatora/table_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: TableScreen(),
   )  ;
  }

}

