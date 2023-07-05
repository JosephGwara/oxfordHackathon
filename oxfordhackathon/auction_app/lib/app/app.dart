import 'package:auction_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:auction_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:auction_app/ui/views/home/home_view.dart';
import 'package:auction_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:auction_app/ui/views/bids/bids_view.dart';
import 'package:auction_app/services/bids_service.dart';
import 'package:auction_app/services/auctions_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: BidsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BidsService),
    LazySingleton(classType: AuctionsService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
