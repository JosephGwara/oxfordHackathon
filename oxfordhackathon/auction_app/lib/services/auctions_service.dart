import 'package:auction_app/models/models.dart';
import 'package:stacked/stacked.dart';

class AuctionsService with ListenableServiceMixin {
  final List<Auction> _auctions = [];

  List<Auction> get auctions => _auctions;

  Future<void> putUpAuction(Auction auction) async {
    _auctions.add(auction);
    notifyListeners();
  }
}
