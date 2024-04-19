import 'package:mytodo/Model/model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static const int _version = 1;
  static const String _dbname = "Notes.db";
  static Future<Database> _getdb() async {
    return openDatabase(join(await getDatabasesPath(),_dbname),
    onCreate: (db, version) async => await db.execute("""
        CREATE TABLE Note(
          id INTEGER PRIMARY KEY,
          title TEXT NOT NULL,
          description TEXT NOT NULL
        );
    """),
    version: _version
    );
  }
  static Future<int> add(Note note) async {
    final db = await _getdb();
      return await db.insert('Notes', note.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace
      );
  }
  static Future<int> updatenotes(Note note)async{
    final db = await _getdb();
    return await db.update('Notes', note.toJson(),
    where: 'id = ?',
    whereArgs: [note.id],
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
  static Future<int> deletenotes(Note note)async{
    final db = await _getdb();
    return await db.delete('Notes',
    where: 'id = ?',
    whereArgs: [note.id],
    );
  }
  static Future<List<Note>?> viewallnotes() async {
    final db = await _getdb();
    final List<Map<String,dynamic>> maps = await db.query('Notes');
    if (maps.isEmpty) {
      return null;
    }
    List.generate(maps.length, (index) => Note.fromJson(maps[index]));
  } 
}