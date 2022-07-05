import 'package:path_provider/path_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

String tableName = 'tableItems';

class SavedMoviesProvider {
  Database? _database;

  Future<Database> get database async {
    print("database getter called");
    print("$_database");
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    print("get initialize");
    String dbPath = await getDatabasesPath();
    final database = openDatabase(
      join(dbPath, 'saved_database.db'),
      version: 1,
      onOpen: (db) {},
      onCreate: (db, version) async {
        print("Creating movie table");
        return db.execute(
          'CREATE TABLE $tableName(titleId TEXT PRIMARY KEY, title TEXT, image TEXT)',
        );
      },
    );
    return database;
  }

  Future<void> insertSavedItem(SavedItemModel savedItems) async {
    final db = await this.database;
    try {
      var result = await db.insert(
        tableName,
        savedItems.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      print('---------resultInsert: $result');
    } catch (err) {
      debugPrint("Something went wrong when inserting an item: $err");
    }
  }

  Future<List<SavedItemModel>> getSavedItems() async {
    final db = await database;
    var result = await db.query(tableName);

    List<SavedItemModel> savedItemsList =
        result.map((element) => SavedItemModel.fromJson(element)).toList();

    print(savedItemsList);
    return savedItemsList;
  }

  Future<void> deleteSavedItem(String id) async {
    print('has been delete item');
    final db = await this.database;
    try {
      await db.delete(
        tableName,
        where: 'titleId = ?',
        whereArgs: [id],
      );
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
