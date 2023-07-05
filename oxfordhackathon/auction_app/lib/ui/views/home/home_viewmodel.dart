import 'package:auction_app/app/app.locator.dart';
import 'package:auction_app/app/app.router.dart';
import 'package:auction_app/models/models.dart';
import 'package:auction_app/services/auctions_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends DynamicSourceViewModel {
  final _dialogService = locator<DialogService>();
  final _auctionsService = locator<AuctionsService>();
  final _navigationService = locator<NavigationService>();

  List<Auction> get auctions => _auctionsService.auctions;

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _auctionsService,
      ];

  Future<void> putUpAuction() async {
    final response = await _dialogService.showConfirmationDialog(
      title: "Confirm Listing",
      description:
          "You're about to up 1 Knowledge Token up for auction at ZAR 9",
    );

    if (response?.confirmed == true) {
      await _auctionsService.putUpAuction(Auction(
        auctionId: DateTime.now().toIso8601String(),
        sellerName: "Batandwa Mgutsi",
        token: const Token(name: "Knowledge Token"),
        quantity: 1,
        reservePrice: 9,
      ));
    }
  }

  Future<void> showAuction(auctionId) {
    return _navigationService.navigateToBidsView(auctionId: auctionId);
  }
}
