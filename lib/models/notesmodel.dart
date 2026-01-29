
import 'package:hive_flutter/hive_flutter.dart';

//the command used for genrating the notesmodel.g.dart
//flutter packages pub run build_runner build
part 'notesmodel.g.dart';

@HiveType(typeId: 0)
class Notesmodel {
  
  @HiveField(0)
  String title;
  
  @HiveField(1)
  String description;

  Notesmodel({required this.description , required this.title});
}

