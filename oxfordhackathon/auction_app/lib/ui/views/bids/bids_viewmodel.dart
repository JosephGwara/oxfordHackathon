import 'dart:math';

import 'package:auction_app/app/app.locator.dart';
import 'package:auction_app/models/models.dart';
import 'package:auction_app/services/bids_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BidsViewModel extends DynamicSourceViewModel {
  final _bidsService = locator<BidsService>();
  final _dialogService = locator<DialogService>();

  final String auctionId;
  BidsViewModel(this.auctionId);

  List<Bid> get bids => _bidsService.listBidsForAuction(auctionId)
    ..sort((a, b) => (b.bidUnitPrice - a.bidUnitPrice).toInt());

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _bidsService,
      ];

  Future<void> putUpBid() async {
    final int bidAmount = Random().nextInt(51);
    final response = await _dialogService.showConfirmationDialog(
      title: "Confirm Bid",
      description:
          "You're about to up a bid for 1 Knowledge Token at ZAR $bidAmount",
    );

    if (response?.confirmed == true) {
      final name =
          ["Simpson", "Joe", "Mendy", "Sipho", "Xhanti"][Random().nextInt(5)];

      await _bidsService.placeBid(Bid(
        auctionId: auctionId,
        bidderName: name,
        bidUnitPrice: bidAmount.toDouble(),
      ));
    }
  }
}
