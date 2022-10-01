import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_db/ui/theme/app_button_style.dart';
import 'package:the_movie_db/ui/widgets/auth/auth_widget_model.dart';
import 'package:the_movie_db/ui/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to your account'),
      ),
      body: ListView(
        children: [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          _FormWidget(),
          SizedBox(height: 30),
          Text(
            'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('Register'),
          ),
          SizedBox(height: 30),
          Text(
            "If you signed up but didn't get your verification email, click here to have it resent.",
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  _FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = AuthWidgetModelProvider.read(context)?.model;
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xFF2125529),
    );
    const texFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF01B4E4)),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      isCollapsed: true,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _ErrorMessageWidget(),
        const Text(
          'Username',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          controller: model?.loginTextController,
          decoration: texFieldDecoration,
        ),
        SizedBox(height: 20),
        Text('Password', style: textStyle),
        SizedBox(height: 5),
        TextField(
          controller: model?.passwordTextController,
          decoration: texFieldDecoration,
          obscureText: true,
        ),
        SizedBox(height: 25),
        Row(
          children: [
            const _AuthButtonWidget(),
            SizedBox(width: 30),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: Text('Reset password'),
            )
          ],
        ),
      ],
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AuthWidgetModelProvider.watch(context)?.model;
    const activeTextFieldColor = Color(0xFF01B4E4);
    final onPressed =
        model?.canStartAuth == true ? () => model?.auth(context) : null;
    final child = model?.isAuthProgress == true
        ? const SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(strokeWidth: 2.5),
          )
        : const Text('Login');
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(activeTextFieldColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final errorMessage =
        AuthWidgetModelProvider.watch(context)?.model.errorMessage;
    if (errorMessage == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.red,
        ),
      ),
    );
  }
}
