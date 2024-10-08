import 'package:badr_agri/infrastructure/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Trees,
  TreeTypes,
  TreeSubTypes,
  TreeHistories,
  TreeHistoryOptions,
  Surfaces,
  SurfaceTypes,
  PlantingModes,
  GpsCoordinates,
  Gardens,
  GardenSections,
  SectionLines,
  CultureTypes,
  Equipements,
  Users
])
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          // Create the tables
          await m.createAll();

          // Insert default data for TreeTypes
          await batch((batch) {
            batch.insertAll(treeTypes, [
              TreeTypesCompanion.insert(id: 'ABRICOTS', name: 'ABRICOTS'),
              TreeTypesCompanion.insert(id: 'POMMIER', name: 'POMMIER'),
              TreeTypesCompanion.insert(id: 'vigne', name: 'vigne'),
              TreeTypesCompanion.insert(id: 'FIGUIERS', name: 'FIGUIERS'),
              TreeTypesCompanion.insert(id: 'AMANDES', name: 'AMANDES'),
              TreeTypesCompanion.insert(id: 'GRENADES', name: 'GRENADES'),
              TreeTypesCompanion.insert(id: 'PECHER', name: 'PECHER'),
              TreeTypesCompanion.insert(id: 'POIRIER', name: 'POIRIER'),
              TreeTypesCompanion.insert(id: 'PRUNIER', name: 'PRUNIER'),
            ]);

            // Insert default data for TreeSubTypes
            batch.insertAll(treeSubTypes, [
              TreeSubTypesCompanion.insert(id: 'bulida', name: 'Bulida'),
              TreeSubTypesCompanion.insert(id: 'luizet', name: 'Luizet'),
              TreeSubTypesCompanion.insert(id: 'arbi', name: 'Arbi'),
              TreeSubTypesCompanion.insert(id: 'boufarik', name: 'Boufarik'),
              TreeSubTypesCompanion.insert(id: 'badai', name: 'Badai'),
              TreeSubTypesCompanion.insert(
                  id: 'pechedenancy', name: 'Pêche de Nancy'),
              TreeSubTypesCompanion.insert(id: 'canino', name: 'Canino'),
              TreeSubTypesCompanion.insert(id: 'polonais', name: 'Polonais'),
              TreeSubTypesCompanion.insert(id: 'bergeron', name: 'Bergeron'),
              TreeSubTypesCompanion.insert(
                  id: 'rougederoussillon', name: 'Rouge de Roussillon'),
            ]);

            batch.insertAll(plantingModes, [
              PlantingModesCompanion.insert(id: 'crowded', name: 'Crowded'),
              PlantingModesCompanion.insert(id: 'spaced', name: 'Spaced'),
            ]);
          });
        },
      );

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'my_database');
  }
}
