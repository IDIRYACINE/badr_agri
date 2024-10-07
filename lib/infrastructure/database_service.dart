
import 'package:badr_agri/infrastructure/database/repostiroy.dart';

import 'database/database.dart';

class DatabaseService {
  late  AppDatabase database = AppDatabase();

  late DatabaseRepository repository;

  void init(){
    repository = DatabaseRepository(database);
  }

  String? userId;


}
