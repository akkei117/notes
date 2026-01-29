// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notesmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesmodelAdapter extends TypeAdapter<Notesmodel> {
  @override
  final int typeId = 0;

  @override
  Notesmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notesmodel(
      description: fields[1] as String,
      title: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Notesmodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
