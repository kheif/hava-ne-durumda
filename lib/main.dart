import 'package:flutter/material.dart';
import 'package:havanedurumda/screens/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hava Ne Durumda',
      home: HomeScreen(),
    );
  }
}