import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';

part 'authentication.g.dart';

@freezed
abstract class Authentication with _$Authentication {
  const factory Authentication({
    @Default(false) bool isLogin,
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
