import 'package:badr_agri/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:badr_agri/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:badr_agri/ui/views/home/home_view.dart';
import 'package:badr_agri/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:badr_agri/features/login/login_view.dart';
import 'package:badr_agri/features/signup/signup_view.dart';
import 'package:badr_agri/features/profile/profile_view.dart';
import 'package:badr_agri/features/garden_screen/garden_screen_view.dart';
import 'package:badr_agri/features/garden_create/garden_create_view.dart';
import 'package:badr_agri/features/garden_sections/garden_sections_view.dart';
import 'package:badr_agri/features/garden_section_lines/garden_section_lines_view.dart';
import 'package:badr_agri/features/garden_section_detaills/garden_section_detaills_view.dart';
import 'package:badr_agri/features/tree_qr_scan/tree_qr_scan_view.dart';
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart';
import 'package:badr_agri/features/garden_report/garden_report_view.dart';
import 'package:badr_agri/infrastructure/auth_service.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:badr_agri/infrastructure/tree_service.dart';
import 'package:badr_agri/features/map_location/map_location_view.dart';
import 'package:badr_agri/ui/dialogs/create_equipement/create_equipement_dialog.dart';
import 'package:badr_agri/features/garden_section_create/garden_section_create_view.dart';
import 'package:badr_agri/features/tree_details/tree_details_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: GardenScreenView),
    MaterialRoute(page: GardenCreateView),
    MaterialRoute(page: GardenSectionsView),
    MaterialRoute(page: GardenSectionLinesView),
    MaterialRoute(page: GardenSectionDetaillsView),
    MaterialRoute(page: TreeQrScanView),
    MaterialRoute(page: TreeMedicalHistoryView),
    MaterialRoute(page: GardenReportView),
    MaterialRoute(page: MapLocationView),
    MaterialRoute(page: GardenSectionCreateView),
    MaterialRoute(page: TreeDetailsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(
      classType: BottomSheetService,
    ),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: DatabaseService),
    LazySingleton(classType: TreeService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: CreateEquipementDialog),
// @stacked-dialog
  ],
)
class App {}
