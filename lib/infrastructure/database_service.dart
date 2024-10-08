
import 'package:badr_agri/infrastructure/database/repostiroy.dart';
import 'package:uuid/uuid.dart';

import 'database/database.dart';

class DatabaseService {
  late  AppDatabase database = AppDatabase();

  late DatabaseRepository repository;
  final uuid = const Uuid();

  void init(){
    repository = DatabaseRepository(database);
  }

  String? userId;


}
