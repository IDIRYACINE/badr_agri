import 'package:badr_agri/domain/equipements.dart' as equipement_domain;
import 'package:badr_agri/domain/garden.dart' as garden_domain;
import 'package:badr_agri/domain/garden_section.dart' as garden_section;
import 'package:badr_agri/domain/location.dart' as gps_location;
import 'package:badr_agri/domain/tree_type.dart' as tree_domain;
import 'package:badr_agri/domain/tree_history.dart' as tree_history;
import 'package:badr_agri/domain/surface.dart' as surface_domain;
import 'package:badr_agri/domain/planting_mode.dart' as planting_mode;

import 'package:badr_agri/infrastructure/database/database.dart';

class DatabaseRepository {
  final AppDatabase db;

  DatabaseRepository(this.db);

  Future<garden_section.SectionLine> gardenSectionLineDbToGardenSectionLine(
      SectionLine sectionLine) async {
    // Load the trees for this section line
    final treeQuery = await (db.select(db.trees)
          ..where((t) => t.sectionLineId.equals(sectionLine.id)))
        .get();

    // Map the results to the Tree domain model
    final trees = await Future.wait(treeQuery.map((tree) async {
      // Load the tree type
      final typeQuery = await (db.select(db.treeTypes)
            ..where((treeType) => treeType.id.equals(tree.type)))
          .get();

      final treeType = typeQuery.isNotEmpty
          ? tree_domain.TreeType(
              id: typeQuery.first.id, name: typeQuery.first.name)
          : null;

      // Load the tree subtype
      final subTypeQuery = await (db.select(db.treeSubTypes)
            ..where((subType) => subType.id.equals(tree.subType)))
          .get();

      final treeSubType = subTypeQuery.isNotEmpty
          ? tree_domain.TreeSubType(
              id: subTypeQuery.first.id, name: subTypeQuery.first.name)
          : null;

      // Load the tree history
      final treeHistoryQuery = await (db.select(db.treeHistories)
            ..where((h) => h.treeId.equals(tree.id)))
          .get();

      final historyFutures = treeHistoryQuery.map((historyRecord) async {
        // Load the history option name, but handle cases where no record is found
        final historyOptionQuery = await (db.select(db.treeHistoryOptions)
              ..where((option) =>
                  option.id.equals(historyRecord.treeHistoryOptionId)))
            .getSingleOrNull(); // Use getSingleOrNull to avoid the exception

        if (historyOptionQuery == null) {
          return null; // Return null if no matching option is found
        }

        return tree_history.TreeHistory(
          id: historyRecord.id,
          option: tree_history.TreeHistoryOption(
              id: historyOptionQuery.id, name: historyOptionQuery.name),
        );
      }).toList();

// Wait for all history futures to complete
      final historyList = await Future.wait(historyFutures);

// Filter out the null values after awaiting the futures
      final history = historyList
          .where((item) => item != null)
          .cast<tree_history.TreeHistory>()
          .toList();

      // Create and return the Tree object with the loaded dependencies
      return tree_domain.Tree(
        number: tree.number,
        id: tree.id,
        type: treeType!, // Assign the loaded TreeType
        age: tree.age,
        subType: treeSubType!, // Assign the loaded TreeSubType
        histroy: history, // Wait for the history to load
      );
    }).toList());

    return garden_section.SectionLine(
      id: sectionLine.id,
      trees: trees,
    );
  }

  Future<garden_section.GardenSection> gardenSectionDbToGardenSection(
      GardenSection section) async {
    // Load the tree type and subtype
    final treeTypeQuery = await (db.select(db.treeTypes)
          ..where((t) => t.id.equals(section.treeType)))
        .get();
    final treeSubTypeQuery = await (db.select(db.treeSubTypes)
          ..where((t) => t.id.equals(section.treeSubType)))
        .get();

    // Ensure tree types exist
    final treeType = treeTypeQuery.isNotEmpty
        ? tree_domain.TreeType(
            id: treeTypeQuery.first.id, name: treeTypeQuery.first.name)
        : null;
    final treeSubType = treeSubTypeQuery.isNotEmpty
        ? tree_domain.TreeSubType(
            id: treeSubTypeQuery.first.id, name: treeSubTypeQuery.first.name)
        : null;

    // Load section lines
    final sectionLinesQuery = await (db.select(db.sectionLines)
          ..where((s) => s.gardenSectionId.equals(section.id)))
        .get();

    final lines = await Future.wait(sectionLinesQuery.map((line) async {
      return gardenSectionLineDbToGardenSectionLine(line);
    }).toList());

    final plantingMode = await (db.select(db.plantingModes)
          ..where((option) => option.id.equals(section.plantModeId)))
        .getSingle();

    // Create and return the GardenSection object
    return garden_section.GardenSection(
      id: section.id,
      lines: lines,
      treeType: treeType!,
      treeSubType: treeSubType!,
      plantingMode: planting_mode.PlantingMode(
          id: plantingMode.id, name: plantingMode.name),
    );
  }

  Future<garden_domain.Garden> gardenDbToGarden(Garden garden) async {
    // Load related data
    final dbSections = await (db.select(db.gardenSections)
          ..where((t) => t.gardenId.equals(garden.id)))
        .get();

    final coordinates = await (db.select(db.gpsCoordinates)
          ..where((t) => t.id.equals(garden.coordinatesId)))
        .getSingle();

    final surface = await (db.select(db.surfaces)
          ..where((t) => t.id.equals(garden.surfaceId)))
        .getSingle();

    final equipements = await (db.select(db.equipements)
          ..where((t) => t.gardenId.equals(garden.id)))
        .get();

    final sections = await Future.wait(dbSections.map((section) async {
      return await gardenSectionDbToGardenSection(section);
    }).toList());

    // Transform data into domain model
    return garden_domain.Garden(
      name: garden.name,
      sections: sections,
      id: garden.id,
      coordinates: gps_location.GpsCoordinates(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude,
        id: coordinates.id,
      ),
      surface: surface_domain.Surface(
          amount: surface.amount,
          type: surface_domain.SurfaceType.values
              .firstWhere((v) => v.name == surface.type),
          id: surface.id), // Assuming you want to store surface amount
      equipements: equipements.map((e) {
        return equipement_domain.Equipement(
          id: e.id,
          name: e.name,
          quantity: e.quantity,
        );
      }).toList(),
    );
  }

  Future<List<garden_domain.Garden>> loadGardens(String userId) async {
    // Query to fetch gardens based on the userId
    final gardens = await (db.select(db.gardens)
          ..where((g) => g.userId.equals(userId)))
        .get();

    List<garden_domain.Garden> gardenList = [];

    if (gardens.isNotEmpty) {
      gardenList = await Future.wait(gardens.map((garden) async {
        return await gardenDbToGarden(garden);
      }).toList());
    }

    // Use Future.wait to process all gardens concurrently

    return gardenList;
  }

  Future<tree_domain.Tree?> loadTree(String treeId) async {
    // Load the tree record from the database
    final treeQuery = await (db.select(db.trees)
          ..where((t) => t.id.equals(treeId)))
        .getSingleOrNull(); // Use getSingleOrNull to handle cases where no tree is found

    if (treeQuery == null) {
      return null; // Return null if no tree is found
    }

    // Load the tree type
    final typeQuery = await (db.select(db.treeTypes)
          ..where((treeType) => treeType.id.equals(treeQuery.type)))
        .get();

    final treeType = typeQuery.isNotEmpty
        ? tree_domain.TreeType(
            id: typeQuery.first.id, name: typeQuery.first.name)
        : null;

    // Load the tree subtype
    final subTypeQuery = await (db.select(db.treeSubTypes)
          ..where((subType) => subType.id.equals(treeQuery.subType)))
        .get();

    final treeSubType = subTypeQuery.isNotEmpty
        ? tree_domain.TreeSubType(
            id: subTypeQuery.first.id, name: subTypeQuery.first.name)
        : null;

    // Load the tree history
    final treeHistoryQuery = await (db.select(db.treeHistories)
          ..where((h) => h.treeId.equals(treeId)))
        .get();

    final historyFutures = treeHistoryQuery.map((historyRecord) async {
      // Load the history option name, handle cases where no record is found
      final historyOptionQuery = await (db.select(db.treeHistoryOptions)
            ..where((option) =>
                option.id.equals(historyRecord.treeHistoryOptionId)))
          .getSingleOrNull();

      if (historyOptionQuery == null) {
        return null;
      }

      return tree_history.TreeHistory(
        id: historyRecord.id,
        option: tree_history.TreeHistoryOption(
            id: historyOptionQuery.id, name: historyOptionQuery.name),
      );
    }).toList();

    // Wait for all history futures to complete
    final historyList = await Future.wait(historyFutures);

    // Filter out the null values after awaiting the futures
    final history = historyList
        .where((item) => item != null)
        .cast<tree_history.TreeHistory>()
        .toList();

    // Return the Tree object with the loaded dependencies
    return tree_domain.Tree(
      number: treeQuery.number,
      id: treeQuery.id,
      type: treeType!, // Assign the loaded TreeType
      age: treeQuery.age,
      subType: treeSubType!, // Assign the loaded TreeSubType
      histroy: history, // Assign the history
    );
  }
}
