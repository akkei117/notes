import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes/homepage.dart';
import 'package:path_provider/path_provider.dart';


void main() async {

  //required for the initilization of Hive database
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange),
      ),
      home: const Homepage(),
    );
  }
}
