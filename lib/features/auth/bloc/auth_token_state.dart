part of 'auth_token_cubit.dart';

@freezed
class AuthTokenState with _$AuthTokenState {
  const factory AuthTokenState.unauthenticated() = UnauthenticatedAuthTokenState;
  const factory AuthTokenState.loading() = LoadingAuthTokenState;
  const factory AuthTokenState.authenticated() = AuthenticatedAuthTokenState;
}
