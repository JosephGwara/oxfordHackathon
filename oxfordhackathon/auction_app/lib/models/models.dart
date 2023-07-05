import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Bid with _$Bid {
  const factory Bid({
    required String auctionId,
    required String bidderName,
    required double bidUnitPrice,
  }) = _Bid;

  factory Bid.fromJson(Map<String, Object?> json) => _$BidFromJson(json);
}

@freezed
class Token with _$Token {
  const factory Token({
    required String name,
  }) = _Token;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}

@freezed
class Auction with _$Auction {
  const factory Auction({
    required String auctionId,
    required String sellerName,
    required Token token,
    required int quantity,
    required double reservePrice,
  }) = _Auction;

  factory Auction.fromJson(Map<String, Object?> json) =>
      _$AuctionFromJson(json);
}
