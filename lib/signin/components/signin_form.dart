import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../signup/signuppage.dart.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Column(children: const [
            Text(
              'Food Now',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Sign in with your email and password \n or continute with social media',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  return null;
                },
                controller: username,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                validator: (value) {
                  return null;
                },
                onSaved: (newValue) {},
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Checkbox(
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  )
                ],
              ),
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
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _iconLogin('assets/icons/facebook.svg'),
                  _iconLogin('assets/icons/google.svg'),
                  _iconLogin('assets/icons/twitter.svg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    },
                    child: const Text('Sign Up',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 18)),
                  )
                ],
              )
            ],
          ),
        )
      ],
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
    username.dispose();
    password.dispose();
  }
}
