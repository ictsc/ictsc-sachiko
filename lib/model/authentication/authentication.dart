import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/user.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
abstract class Authentication with _$Authentication {
  const factory Authentication({
    User? user,
  }) = _Authentication;

  const Authentication._();

  bool get isLogin => user != null;

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
