// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  String get auctionId => throw _privateConstructorUsedError;
  String get bidderName => throw _privateConstructorUsedError;
  double get bidUnitPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call({String auctionId, String bidderName, double bidUnitPrice});
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? bidderName = null,
    Object? bidUnitPrice = null,
  }) {
    return _then(_value.copyWith(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      bidderName: null == bidderName
          ? _value.bidderName
          : bidderName // ignore: cast_nullable_to_non_nullable
              as String,
      bidUnitPrice: null == bidUnitPrice
          ? _value.bidUnitPrice
          : bidUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BidCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$_BidCopyWith(_$_Bid value, $Res Function(_$_Bid) then) =
      __$$_BidCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId, String bidderName, double bidUnitPrice});
}

/// @nodoc
class __$$_BidCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$_Bid>
    implements _$$_BidCopyWith<$Res> {
  __$$_BidCopyWithImpl(_$_Bid _value, $Res Function(_$_Bid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? bidderName = null,
    Object? bidUnitPrice = null,
  }) {
    return _then(_$_Bid(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      bidderName: null == bidderName
          ? _value.bidderName
          : bidderName // ignore: cast_nullable_to_non_nullable
              as String,
      bidUnitPrice: null == bidUnitPrice
          ? _value.bidUnitPrice
          : bidUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bid implements _Bid {
  const _$_Bid(
      {required this.auctionId,
      required this.bidderName,
      required this.bidUnitPrice});

  factory _$_Bid.fromJson(Map<String, dynamic> json) => _$$_BidFromJson(json);

  @override
  final String auctionId;
  @override
  final String bidderName;
  @override
  final double bidUnitPrice;

  @override
  String toString() {
    return 'Bid(auctionId: $auctionId, bidderName: $bidderName, bidUnitPrice: $bidUnitPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bid &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.bidderName, bidderName) ||
                other.bidderName == bidderName) &&
            (identical(other.bidUnitPrice, bidUnitPrice) ||
                other.bidUnitPrice == bidUnitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, auctionId, bidderName, bidUnitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BidCopyWith<_$_Bid> get copyWith =>
      __$$_BidCopyWithImpl<_$_Bid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidToJson(
      this,
    );
  }
}

abstract class _Bid implements Bid {
  const factory _Bid(
      {required final String auctionId,
      required final String bidderName,
      required final double bidUnitPrice}) = _$_Bid;

  factory _Bid.fromJson(Map<String, dynamic> json) = _$_Bid.fromJson;

  @override
  String get auctionId;
  @override
  String get bidderName;
  @override
  double get bidUnitPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BidCopyWith<_$_Bid> get copyWith => throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$_TokenCopyWith(_$_Token value, $Res Function(_$_Token) then) =
      __$$_TokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res, _$_Token>
    implements _$$_TokenCopyWith<$Res> {
  __$$_TokenCopyWithImpl(_$_Token _value, $Res Function(_$_Token) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Token(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Token implements _Token {
  const _$_Token({required this.name});

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$$_TokenFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Token(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Token &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      __$$_TokenCopyWithImpl<_$_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token({required final String name}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      throw _privateConstructorUsedError;
}

Auction _$AuctionFromJson(Map<String, dynamic> json) {
  return _Auction.fromJson(json);
}

/// @nodoc
mixin _$Auction {
  String get auctionId => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get reservePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionCopyWith<Auction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionCopyWith<$Res> {
  factory $AuctionCopyWith(Auction value, $Res Function(Auction) then) =
      _$AuctionCopyWithImpl<$Res, Auction>;
  @useResult
  $Res call(
      {String auctionId,
      String sellerName,
      Token token,
      int quantity,
      double reservePrice});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$AuctionCopyWithImpl<$Res, $Val extends Auction>
    implements $AuctionCopyWith<$Res> {
  _$AuctionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? sellerName = null,
    Object? token = null,
    Object? quantity = null,
    Object? reservePrice = null,
  }) {
    return _then(_value.copyWith(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservePrice: null == reservePrice
          ? _value.reservePrice
          : reservePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuctionCopyWith<$Res> implements $AuctionCopyWith<$Res> {
  factory _$$_AuctionCopyWith(
          _$_Auction value, $Res Function(_$_Auction) then) =
      __$$_AuctionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String auctionId,
      String sellerName,
      Token token,
      int quantity,
      double reservePrice});

  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$_AuctionCopyWithImpl<$Res>
    extends _$AuctionCopyWithImpl<$Res, _$_Auction>
    implements _$$_AuctionCopyWith<$Res> {
  __$$_AuctionCopyWithImpl(_$_Auction _value, $Res Function(_$_Auction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? sellerName = null,
    Object? token = null,
    Object? quantity = null,
    Object? reservePrice = null,
  }) {
    return _then(_$_Auction(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservePrice: null == reservePrice
          ? _value.reservePrice
          : reservePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Auction implements _Auction {
  const _$_Auction(
      {required this.auctionId,
      required this.sellerName,
      required this.token,
      required this.quantity,
      required this.reservePrice});

  factory _$_Auction.fromJson(Map<String, dynamic> json) =>
      _$$_AuctionFromJson(json);

  @override
  final String auctionId;
  @override
  final String sellerName;
  @override
  final Token token;
  @override
  final int quantity;
  @override
  final double reservePrice;

  @override
  String toString() {
    return 'Auction(auctionId: $auctionId, sellerName: $sellerName, token: $token, quantity: $quantity, reservePrice: $reservePrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auction &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservePrice, reservePrice) ||
                other.reservePrice == reservePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, auctionId, sellerName, token, quantity, reservePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuctionCopyWith<_$_Auction> get copyWith =>
      __$$_AuctionCopyWithImpl<_$_Auction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuctionToJson(
      this,
    );
  }
}

abstract class _Auction implements Auction {
  const factory _Auction(
      {required final String auctionId,
      required final String sellerName,
      required final Token token,
      required final int quantity,
      required final double reservePrice}) = _$_Auction;

  factory _Auction.fromJson(Map<String, dynamic> json) = _$_Auction.fromJson;

  @override
  String get auctionId;
  @override
  String get sellerName;
  @override
  Token get token;
  @override
  int get quantity;
  @override
  double get reservePrice;
  @override
  @JsonKey(ignore: true)
  _$$_AuctionCopyWith<_$_Auction> get copyWith =>
      throw _privateConstructorUsedError;
}
