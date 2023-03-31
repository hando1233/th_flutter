import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController email = TextEditingController();

  TextEditingController passwors = TextEditingController();

  TextEditingController rePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              return null;
            },
            controller: email,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username',
              suffixIcon: Icon(Icons.mail_outline),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            validator: (value) {
              return null;
            },
            controller: passwors,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
              suffixIcon: Icon(Icons.lock_outline_rounded),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            validator: (value) {
              return null;
            },
            controller: rePassword,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Re-enter your password',
              suffixIcon: Icon(Icons.lock_outline_rounded),
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  'Continute',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _iconLogin('assets/icons/facebook.svg'),
              _iconLogin('assets/icons/google.svg'),
              _iconLogin('assets/icons/twitter.svg'),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector _iconLogin(String path) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          height: 42,
          width: 42,
          child: SvgPicture.asset(path)),
    );
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    passwors.dispose();
    rePassword.dispose();
  }
}
