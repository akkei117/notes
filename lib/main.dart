import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/homepage.dart';
import 'package:path_provider/path_provider.dart';

void main() async {

  //initilization of hive database
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
      title: 'Notes',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange),
      ),
      home: const Homepage(),
    );
  }
}
