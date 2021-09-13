part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unAuth() = _UnAuth;
  const factory AuthState.unVerified() = _UnVerified;
  const factory AuthState.verified() = _Verified;
  const factory AuthState.logout() = _Logout;
}
