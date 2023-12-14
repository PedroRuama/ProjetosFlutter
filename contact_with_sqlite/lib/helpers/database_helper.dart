import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';

class DatabeseHalper {
  static late DatabeseHalper _databeseHalper;

  DatabeseHalper._createInstance();

  factory DatabeseHalper(){
    _databeseHalper = DatabeseHalper._createInstance();
    return _databeseHalper;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationCacheDirectory();
    String path = '${directory.path}contacts.db';

    var contactsDatabase = 
      await openDatabase(path, version: 1,  onCreate: _createDb); 
      return contactsDatabase;
  }


  void _createDb (Database db, int newVersion) async{
    String sql = 'CREATE TABLE contacts('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'name TEXT,'
      'email TEXT,'
      'image TEXT'
      ')';

      await db.execute(sql);
  }

}