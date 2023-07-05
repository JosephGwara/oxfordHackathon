import 'package:auction_app/models/models.dart';
import 'package:stacked/stacked.dart';

class BidsService with ListenableServiceMixin {
  final List<Bid> _bids = [];

  Future<void> placeBid(Bid bid) async {
    _bids.add(bid);
    notifyListeners();
  }

  List<Bid> listBidsForAuction(String auctionId) {
    return _bids.where((e) => e.auctionId == auctionId).toList();
  }
}
