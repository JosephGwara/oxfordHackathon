// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bid _$$_BidFromJson(Map<String, dynamic> json) => _$_Bid(
      auctionId: json['auctionId'] as String,
      bidderName: json['bidderName'] as String,
      bidUnitPrice: (json['bidUnitPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BidToJson(_$_Bid instance) => <String, dynamic>{
      'auctionId': instance.auctionId,
      'bidderName': instance.bidderName,
      'bidUnitPrice': instance.bidUnitPrice,
    };

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_Auction _$$_AuctionFromJson(Map<String, dynamic> json) => _$_Auction(
      auctionId: json['auctionId'] as String,
      sellerName: json['sellerName'] as String,
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      reservePrice: (json['reservePrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AuctionToJson(_$_Auction instance) =>
    <String, dynamic>{
      'auctionId': instance.auctionId,
      'sellerName': instance.sellerName,
      'token': instance.token,
      'quantity': instance.quantity,
      'reservePrice': instance.reservePrice,
    };
