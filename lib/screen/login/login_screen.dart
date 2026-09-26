import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _submit() => context.read<LoginCubit>().signIn(
        email: _email.text,
        password: _password.text,
      );

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: 'Log in'),
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final submitting = state is LoginSubmitting;
          return Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AdaptiveTextField(
                      controller: _email,
                      placeholder: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      autocorrect: false,
                      enabled: !submitting,
                    ),
                    const SizedBox(height: 12),
                    AdaptiveTextField(
                      controller: _password,
                      placeholder: 'Password',
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      enabled: !submitting,
                      onSubmitted: (_) => _submit(),
                    ),
                    if (state case LoginFailed(:final message)) ...[
                      const SizedBox(height: 12),
                      Text(
                        message,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                    ],
                    const SizedBox(height: 24),
                    AdaptiveButton(
                      onPressed: submitting ? null : _submit,
                      label: submitting ? 'Signing in…' : 'Log in',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
