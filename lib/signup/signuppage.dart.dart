import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static String routName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.green, fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: const BodySignUp(),
    );
  }
}
