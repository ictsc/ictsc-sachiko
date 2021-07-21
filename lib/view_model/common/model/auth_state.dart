import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictsc_sachiko/model/user.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoginChecked,
    User? user,
  }) = _AuthState;

 factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}