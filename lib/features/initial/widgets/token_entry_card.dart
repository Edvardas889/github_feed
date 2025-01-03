import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_feed/features/auth/bloc/auth_token_cubit.dart';
import 'package:github_feed/features/initial/bloc/main_feed_cubit.dart';

class TokenEntryCard extends StatefulWidget {
  const TokenEntryCard({super.key});

  @override
  State<TokenEntryCard> createState() => _TokenEntryCardState();
}

class _TokenEntryCardState extends State<TokenEntryCard> {
  final _tokenTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocConsumer<AuthTokenCubit, AuthTokenState>(
          listener: (context, authTokenState) {
            authTokenState.mapOrNull(
              authenticated: (_) {
                context.read<MainFeedCubit>().load(
                      clearCache: true,
                    );
                context.router.maybePop();
              },
              unauthenticated: (_) {
                context.router.maybePop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Authentication failed"),
                  ),
                );
              },
            );
          },
          builder: (context, authTokenState) {
            return Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (authTokenState is LoadingAuthTokenState)
                    CircularProgressIndicator(),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter token';
                      }
                      return null;
                    },
                    controller: _tokenTextController,
                    decoration: InputDecoration(hintText: "TOKEN"),
                  ),
                  const SizedBox(height: 24.0),
                  FilledButton(
                    onPressed: authTokenState is LoadingAuthTokenState
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthTokenCubit>().authenticateToken(
                                    _tokenTextController.text,
                                  );
                            }
                          },
                    child: Text("Authenticate"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
