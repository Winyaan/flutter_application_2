import 'package:flutter/material.dart';
import 'package:flutter_application_2/httpbasic.dart';
import 'package:flutter_application_2/my_futurebuilder_page.dart';
import 'aboutus.dart';
import 'list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Colors.green)),
      home: Httpbasic() ,
    );
  }
}
