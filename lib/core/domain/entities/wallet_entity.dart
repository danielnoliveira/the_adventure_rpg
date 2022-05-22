import 'dart:convert';

class Wallet {
  int _coins = 0;
  int _gems = 0;
  Wallet({
    required int coins,
    required int gems,
  })  : _coins = coins,
        _gems = gems;

  int get coins => _coins;
  int get gems => _gems;

  set newCoins(int value) {
    _coins = value;
  }

  set newGems(int value) {
    _gems = value;
  }

  Wallet copyWith({
    int? coins,
    int? gems,
  }) {
    return Wallet(
      coins: coins ?? _coins,
      gems: gems ?? _gems,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'_coins': _coins});
    result.addAll({'_gems': _gems});

    return result;
  }

  factory Wallet.fromMap(Map<String, dynamic> map) {
    return Wallet(
      coins: map['_coins']?.toInt() ?? 0,
      gems: map['_gems']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wallet.fromJson(String source) => Wallet.fromMap(json.decode(source));

  @override
  String toString() => 'Wallet(_coins: $_coins, _gems: $_gems)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Wallet && other._coins == _coins && other._gems == _gems;
  }

  @override
  int get hashCode => _coins.hashCode ^ _gems.hashCode;
}
