import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sql.dart';
import 'package:todolist/Model/Notes_Models.dart';

class DatabaseHelper{
  static const int _version = 1;
  static const String _dbname = "Notes.db";

  static Future<Database> _getdb () async{
    return openDatabase(join(await getDatabasesPath(),_dbname),
      onCreate: (db, version) async {
        await db.execute("""
            CREATE TABLE Note(
              id INTEGER PRIMARY KEY,
              title TEXT NOT NULL,
              description TEXT NOT NULL
            );
      """);
      },
      version: _version
    );
  }
  ///creating table is been completed here 
  static Future<int> addNote(Note note)  async {
    final db = await _getdb();
    return await db.insert("Note", note.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
  ///completed adding notes methode here 
  static Future<int> updateNote(Note note) async{
    final db = await _getdb();
    return db.update("Note", note.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
  ///Comlpeted updating methode over here 
  static Future<int> deleteNote(Note note) async {
    final db = await _getdb();
    return db.delete("Note",
    where: 'id = ?',
    whereArgs: [note.id],
    );   
  }

  //Completed deleting methode over here 
  static Future<List<Note>?> getAllNotes() async {
    final db = await _getdb();
    final List<Map<String,dynamic>> maps = await db.query("Note");
    if (maps.isEmpty) {
        return null;
    }
    return List.generate(maps.length, (index) => Note.fromJson(maps[index]));
  }
}