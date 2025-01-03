import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_feed/features/auth/repositories/authenticate_token_repository.dart';

part 'auth_token_state.dart';

part 'auth_token_cubit.freezed.dart';

class AuthTokenCubit extends Cubit<AuthTokenState> {
  final AuthenticateTokenRepository authenticateTokenRepository;

  AuthTokenCubit(
    this.authenticateTokenRepository,
  ) : super(const AuthTokenState.unauthenticated());

  void init() async {
    try {
      final result = authenticateTokenRepository.getToken();
      if (result?.isNotEmpty == true) {
        return emit(AuthTokenState.authenticated());
      }
      return emit(AuthTokenState.unauthenticated());
    } catch (e) {
      //LOG ERROR
      emit(const AuthTokenState.unauthenticated());
    }
  }

  void authenticateToken(String token) async {
    try {
      emit(const AuthTokenState.loading());
      final result = await authenticateTokenRepository.isTokenValid(token);
      if (result.isRight) {
        return emit(AuthTokenState.authenticated());
      }
      return emit(AuthTokenState.unauthenticated());
    } catch (e) {
      //LOG ERROR
      emit(const AuthTokenState.unauthenticated());
    }
  }

  void deleteToken() async {
    emit(const AuthTokenState.loading());
    await authenticateTokenRepository.deleteToken();
    return emit(AuthTokenState.unauthenticated());
  }
}
