import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:berito/core/theme/theme.dart';
import 'package:berito/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
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
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    // Rebuild on focus changes so the border color follows.
    _emailFocus.addListener(_onFocusChanged);
    _passwordFocus.addListener(_onFocusChanged);
  }

  void _onFocusChanged() => setState(() {});

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  /// The default iOS field is white on white, so give it a border that
  /// switches to the primary color while the field is focused.
  BoxDecoration _fieldDecoration(BuildContext context, FocusNode focusNode) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: focusNode.hasFocus
              ? CupertinoTheme.of(context).primaryColor
              : CupertinoColors.systemGrey3.resolveFrom(context),
          width: 1.5,
        ),
      );

  void _submit() => context.read<LoginCubit>().signIn(
        email: _email.text,
        password: _password.text,
      );

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: BlocPresentationListener<LoginCubit, LoginPresentationEvent>(
        listener: (context, event) => switch (event) {
          LoginErrorEvent(:final message) => AdaptiveSnackBar.show(
              context,
              message: message,
              type: AdaptiveSnackBarType.error,
            ),
        },
        child: BlocBuilder<LoginCubit, LoginState>(
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
                      const Center(child: BeritoLogo()),
                      const SizedBox(height: 24),
                      Text(
                        'Zaloguj się do portalu studenta',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(height: 32),
                      AdaptiveTextField(
                        controller: _email,
                        focusNode: _emailFocus,
                        cupertinoDecoration:
                            _fieldDecoration(context, _emailFocus),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 14),
                        placeholder: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autocorrect: false,
                        enabled: !submitting,
                      ),
                      const SizedBox(height: 12),
                      AdaptiveTextField(
                        controller: _password,
                        focusNode: _passwordFocus,
                        cupertinoDecoration:
                            _fieldDecoration(context, _passwordFocus),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 14),
                        placeholder: 'Hasło',
                        obscureText: _obscurePassword,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () => setState(
                            () => _obscurePassword = !_obscurePassword,
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        enabled: !submitting,
                        onSubmitted: (_) => _submit(),
                      ),
                      const SizedBox(height: 24),
                      AdaptiveButton(
                        onPressed: submitting ? null : _submit,
                        // Native iOS 26 buttons ignore the app theme; pass the color.
                        color: AppTheme.brandGreen,
                        textColor: Colors.black,
                        label: submitting ? 'Logowanie…' : 'Zaloguj się',
                      ),
                      const SizedBox(height: 8),
                      AdaptiveButton(
                        // TODO: implement password reset.
                        onPressed: () {},
                        style: AdaptiveButtonStyle.plain,
                        color: AppTheme.brandGreen,
                        label: 'Nie pamiętasz hasła?',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
