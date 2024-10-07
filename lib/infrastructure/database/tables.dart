import 'package:drift/drift.dart';

class Trees extends Table {
  TextColumn get id => text()(); // Primary key
  IntColumn get age => integer()();
  TextColumn get type => text().references(TreeTypes, #id)(); // Foreign key
  TextColumn get sectionLineId => text().references(GardenSections, #id)(); // Foreign key
  TextColumn get subType =>
      text().references(TreeSubTypes, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class TreeTypes extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

class TreeSubTypes extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

class Surfaces extends Table {
  TextColumn get id => text()(); // Primary key

  RealColumn get amount => real()();
  TextColumn get type => text().references(SurfaceTypes, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class SurfaceTypes extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

class PlantingModes extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

class GpsCoordinates extends Table {
  TextColumn get id => text()(); // Primary key

  RealColumn get latitude => real()();
  RealColumn get longitude => real()();

  @override
  Set<Column> get primaryKey => {id};
}

class Gardens extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get coordinatesId =>
      text().references(GpsCoordinates, #id)(); // Foreign key
  TextColumn get surfaceId => text().references(Surfaces, #id)(); // Foreign key
  TextColumn get userId => text().references(Users, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class GardenSections extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get treeType => text().references(TreeTypes, #id)(); // Foreign key
  TextColumn get treeSubType =>
      text().references(TreeSubTypes, #id)(); // Foreign key
  TextColumn get gardenId => text().references(Gardens, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class SectionLines extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get gardenSectionId =>
      text().references(GardenSections, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class TreeHistories extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get treeId =>
      text().references(Trees, #id)(); // Foreign key to Trees table
  TextColumn get treeHistoryOptionId => text().references(
      TreeHistoryOptions, #id)(); // Foreign key to TreeHistoryOptions table

  @override
  Set<Column> get primaryKey => {id};
}

class TreeHistoryOptions extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(
      min: 1, max: 50)(); // Option name (e.g., pruning, watering, etc.)

  @override
  Set<Column> get primaryKey => {id};
}

class CultureTypes extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

class Equipements extends Table {
  TextColumn get id => text()(); // Primary key
  TextColumn get name => text().withLength(min: 1, max: 100)();
  IntColumn get quantity => integer()();
  TextColumn get gardenId => text().references(Gardens, #id)(); // Foreign key

  @override
  Set<Column> get primaryKey => {id};
}

class Users extends Table {
  TextColumn get id => text().withLength(min: 1, max: 50)(); // Primary key
  TextColumn get fullname =>
      text().withLength(min: 1, max: 100).unique()(); // Unique email
  TextColumn get phoneNumber =>
      text().nullable().withLength(min: 10, max: 15)(); // Optional phone number
  TextColumn get address =>
      text().nullable().withLength(min: 1, max: 250)(); // Optional address

  @override
  Set<Column> get primaryKey => {id};
}
