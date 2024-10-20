// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:badr_agri/domain/garden.dart' as _i21;
import 'package:badr_agri/domain/garden_section.dart' as _i22;
import 'package:badr_agri/domain/tree_type.dart' as _i23;
import 'package:badr_agri/features/garden_create/garden_create_view.dart'
    as _i8;
import 'package:badr_agri/features/garden_report/garden_report_view.dart'
    as _i14;
import 'package:badr_agri/features/garden_screen/garden_screen_view.dart'
    as _i7;
import 'package:badr_agri/features/garden_section_create/garden_section_create_view.dart'
    as _i16;
import 'package:badr_agri/features/garden_section_detaills/garden_section_detaills_view.dart'
    as _i11;
import 'package:badr_agri/features/garden_section_lines/garden_section_lines_view.dart'
    as _i10;
import 'package:badr_agri/features/garden_sections/garden_sections_view.dart'
    as _i9;
import 'package:badr_agri/features/login/login_view.dart' as _i4;
import 'package:badr_agri/features/map/map_view.dart' as _i18;
import 'package:badr_agri/features/map_location/map_location_view.dart' as _i15;
import 'package:badr_agri/features/profile/profile_view.dart' as _i6;
import 'package:badr_agri/features/qr_scanner/qr_scanner_view.dart' as _i19;
import 'package:badr_agri/features/signup/signup_view.dart' as _i5;
import 'package:badr_agri/features/tree_details/tree_details_view.dart' as _i17;
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart'
    as _i13;
import 'package:badr_agri/features/tree_qr_scan/tree_qr_scan_view.dart' as _i12;
import 'package:badr_agri/ui/views/home/home_view.dart' as _i2;
import 'package:badr_agri/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i20;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i24;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const profileView = '/profile-view';

  static const gardenScreenView = '/garden-screen-view';

  static const gardenCreateView = '/garden-create-view';

  static const gardenSectionsView = '/garden-sections-view';

  static const gardenSectionLinesView = '/garden-section-lines-view';

  static const gardenSectionDetaillsView = '/garden-section-detaills-view';

  static const treeQrScanView = '/tree-qr-scan-view';

  static const treeMedicalHistoryView = '/tree-medical-history-view';

  static const gardenReportView = '/garden-report-view';

  static const mapLocationView = '/map-location-view';

  static const gardenSectionCreateView = '/garden-section-create-view';

  static const treeDetailsView = '/tree-details-view';

  static const mapView = '/map-view';

  static const qrScannerView = '/qr-scanner-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    signupView,
    profileView,
    gardenScreenView,
    gardenCreateView,
    gardenSectionsView,
    gardenSectionLinesView,
    gardenSectionDetaillsView,
    treeQrScanView,
    treeMedicalHistoryView,
    gardenReportView,
    mapLocationView,
    gardenSectionCreateView,
    treeDetailsView,
    mapView,
    qrScannerView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i5.SignupView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i6.ProfileView,
    ),
    _i1.RouteDef(
      Routes.gardenScreenView,
      page: _i7.GardenScreenView,
    ),
    _i1.RouteDef(
      Routes.gardenCreateView,
      page: _i8.GardenCreateView,
    ),
    _i1.RouteDef(
      Routes.gardenSectionsView,
      page: _i9.GardenSectionsView,
    ),
    _i1.RouteDef(
      Routes.gardenSectionLinesView,
      page: _i10.GardenSectionLinesView,
    ),
    _i1.RouteDef(
      Routes.gardenSectionDetaillsView,
      page: _i11.GardenSectionDetaillsView,
    ),
    _i1.RouteDef(
      Routes.treeQrScanView,
      page: _i12.TreeQrScanView,
    ),
    _i1.RouteDef(
      Routes.treeMedicalHistoryView,
      page: _i13.TreeMedicalHistoryView,
    ),
    _i1.RouteDef(
      Routes.gardenReportView,
      page: _i14.GardenReportView,
    ),
    _i1.RouteDef(
      Routes.mapLocationView,
      page: _i15.MapLocationView,
    ),
    _i1.RouteDef(
      Routes.gardenSectionCreateView,
      page: _i16.GardenSectionCreateView,
    ),
    _i1.RouteDef(
      Routes.treeDetailsView,
      page: _i17.TreeDetailsView,
    ),
    _i1.RouteDef(
      Routes.mapView,
      page: _i18.MapView,
    ),
    _i1.RouteDef(
      Routes.qrScannerView,
      page: _i19.QrScannerView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.SignupView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignupView(),
        settings: data,
      );
    },
    _i6.ProfileView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ProfileView(),
        settings: data,
      );
    },
    _i7.GardenScreenView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.GardenScreenView(),
        settings: data,
      );
    },
    _i8.GardenCreateView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.GardenCreateView(),
        settings: data,
      );
    },
    _i9.GardenSectionsView: (data) {
      final args = data.getArgs<GardenSectionsViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.GardenSectionsView(key: args.key, garden: args.garden),
        settings: data,
      );
    },
    _i10.GardenSectionLinesView: (data) {
      final args = data.getArgs<GardenSectionLinesViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.GardenSectionLinesView(
            key: args.key,
            gardenSection: args.gardenSection,
            sectionIndex: args.sectionIndex),
        settings: data,
      );
    },
    _i11.GardenSectionDetaillsView: (data) {
      final args =
          data.getArgs<GardenSectionDetaillsViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.GardenSectionDetaillsView(
            key: args.key,
            sectionLine: args.sectionLine,
            lineIndex: args.lineIndex,
            sectionIndex: args.sectionIndex),
        settings: data,
      );
    },
    _i12.TreeQrScanView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.TreeQrScanView(),
        settings: data,
      );
    },
    _i13.TreeMedicalHistoryView: (data) {
      final args = data.getArgs<TreeMedicalHistoryViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i13.TreeMedicalHistoryView(tree: args.tree, key: args.key),
        settings: data,
      );
    },
    _i14.GardenReportView: (data) {
      final args = data.getArgs<GardenReportViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i14.GardenReportView(key: args.key, garden: args.garden),
        settings: data,
      );
    },
    _i15.MapLocationView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.MapLocationView(),
        settings: data,
      );
    },
    _i16.GardenSectionCreateView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.GardenSectionCreateView(),
        settings: data,
      );
    },
    _i17.TreeDetailsView: (data) {
      final args = data.getArgs<TreeDetailsViewArguments>(nullOk: false);
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i17.TreeDetailsView(key: args.key, tree: args.tree),
        settings: data,
      );
    },
    _i18.MapView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.MapView(),
        settings: data,
      );
    },
    _i19.QrScannerView: (data) {
      final args = data.getArgs<QrScannerViewArguments>(
        orElse: () => const QrScannerViewArguments(),
      );
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i19.QrScannerView(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class GardenSectionsViewArguments {
  const GardenSectionsViewArguments({
    this.key,
    required this.garden,
  });

  final _i20.Key? key;

  final _i21.Garden garden;

  @override
  String toString() {
    return '{"key": "$key", "garden": "$garden"}';
  }

  @override
  bool operator ==(covariant GardenSectionsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.garden == garden;
  }

  @override
  int get hashCode {
    return key.hashCode ^ garden.hashCode;
  }
}

class GardenSectionLinesViewArguments {
  const GardenSectionLinesViewArguments({
    this.key,
    required this.gardenSection,
    required this.sectionIndex,
  });

  final _i20.Key? key;

  final _i22.GardenSection gardenSection;

  final int sectionIndex;

  @override
  String toString() {
    return '{"key": "$key", "gardenSection": "$gardenSection", "sectionIndex": "$sectionIndex"}';
  }

  @override
  bool operator ==(covariant GardenSectionLinesViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.gardenSection == gardenSection &&
        other.sectionIndex == sectionIndex;
  }

  @override
  int get hashCode {
    return key.hashCode ^ gardenSection.hashCode ^ sectionIndex.hashCode;
  }
}

class GardenSectionDetaillsViewArguments {
  const GardenSectionDetaillsViewArguments({
    this.key,
    required this.sectionLine,
    required this.lineIndex,
    required this.sectionIndex,
  });

  final _i20.Key? key;

  final _i22.SectionLine sectionLine;

  final int lineIndex;

  final int sectionIndex;

  @override
  String toString() {
    return '{"key": "$key", "sectionLine": "$sectionLine", "lineIndex": "$lineIndex", "sectionIndex": "$sectionIndex"}';
  }

  @override
  bool operator ==(covariant GardenSectionDetaillsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.sectionLine == sectionLine &&
        other.lineIndex == lineIndex &&
        other.sectionIndex == sectionIndex;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        sectionLine.hashCode ^
        lineIndex.hashCode ^
        sectionIndex.hashCode;
  }
}

class TreeMedicalHistoryViewArguments {
  const TreeMedicalHistoryViewArguments({
    required this.tree,
    this.key,
  });

  final _i23.Tree tree;

  final _i20.Key? key;

  @override
  String toString() {
    return '{"tree": "$tree", "key": "$key"}';
  }

  @override
  bool operator ==(covariant TreeMedicalHistoryViewArguments other) {
    if (identical(this, other)) return true;
    return other.tree == tree && other.key == key;
  }

  @override
  int get hashCode {
    return tree.hashCode ^ key.hashCode;
  }
}

class GardenReportViewArguments {
  const GardenReportViewArguments({
    this.key,
    required this.garden,
  });

  final _i20.Key? key;

  final _i21.Garden garden;

  @override
  String toString() {
    return '{"key": "$key", "garden": "$garden"}';
  }

  @override
  bool operator ==(covariant GardenReportViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.garden == garden;
  }

  @override
  int get hashCode {
    return key.hashCode ^ garden.hashCode;
  }
}

class TreeDetailsViewArguments {
  const TreeDetailsViewArguments({
    this.key,
    required this.tree,
  });

  final _i20.Key? key;

  final _i23.Tree tree;

  @override
  String toString() {
    return '{"key": "$key", "tree": "$tree"}';
  }

  @override
  bool operator ==(covariant TreeDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.tree == tree;
  }

  @override
  int get hashCode {
    return key.hashCode ^ tree.hashCode;
  }
}

class QrScannerViewArguments {
  const QrScannerViewArguments({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant QrScannerViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i24.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gardenScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gardenCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenSectionsView({
    _i20.Key? key,
    required _i21.Garden garden,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.gardenSectionsView,
        arguments: GardenSectionsViewArguments(key: key, garden: garden),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenSectionLinesView({
    _i20.Key? key,
    required _i22.GardenSection gardenSection,
    required int sectionIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.gardenSectionLinesView,
        arguments: GardenSectionLinesViewArguments(
            key: key, gardenSection: gardenSection, sectionIndex: sectionIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenSectionDetaillsView({
    _i20.Key? key,
    required _i22.SectionLine sectionLine,
    required int lineIndex,
    required int sectionIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.gardenSectionDetaillsView,
        arguments: GardenSectionDetaillsViewArguments(
            key: key,
            sectionLine: sectionLine,
            lineIndex: lineIndex,
            sectionIndex: sectionIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTreeQrScanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.treeQrScanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTreeMedicalHistoryView({
    required _i23.Tree tree,
    _i20.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.treeMedicalHistoryView,
        arguments: TreeMedicalHistoryViewArguments(tree: tree, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenReportView({
    _i20.Key? key,
    required _i21.Garden garden,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.gardenReportView,
        arguments: GardenReportViewArguments(key: key, garden: garden),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMapLocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mapLocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGardenSectionCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gardenSectionCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTreeDetailsView({
    _i20.Key? key,
    required _i23.Tree tree,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.treeDetailsView,
        arguments: TreeDetailsViewArguments(key: key, tree: tree),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMapView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mapView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToQrScannerView({
    _i20.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.qrScannerView,
        arguments: QrScannerViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.gardenScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.gardenCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenSectionsView({
    _i20.Key? key,
    required _i21.Garden garden,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.gardenSectionsView,
        arguments: GardenSectionsViewArguments(key: key, garden: garden),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenSectionLinesView({
    _i20.Key? key,
    required _i22.GardenSection gardenSection,
    required int sectionIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.gardenSectionLinesView,
        arguments: GardenSectionLinesViewArguments(
            key: key, gardenSection: gardenSection, sectionIndex: sectionIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenSectionDetaillsView({
    _i20.Key? key,
    required _i22.SectionLine sectionLine,
    required int lineIndex,
    required int sectionIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.gardenSectionDetaillsView,
        arguments: GardenSectionDetaillsViewArguments(
            key: key,
            sectionLine: sectionLine,
            lineIndex: lineIndex,
            sectionIndex: sectionIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTreeQrScanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.treeQrScanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTreeMedicalHistoryView({
    required _i23.Tree tree,
    _i20.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.treeMedicalHistoryView,
        arguments: TreeMedicalHistoryViewArguments(tree: tree, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenReportView({
    _i20.Key? key,
    required _i21.Garden garden,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.gardenReportView,
        arguments: GardenReportViewArguments(key: key, garden: garden),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMapLocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mapLocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGardenSectionCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.gardenSectionCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTreeDetailsView({
    _i20.Key? key,
    required _i23.Tree tree,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.treeDetailsView,
        arguments: TreeDetailsViewArguments(key: key, tree: tree),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMapView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mapView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithQrScannerView({
    _i20.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.qrScannerView,
        arguments: QrScannerViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
