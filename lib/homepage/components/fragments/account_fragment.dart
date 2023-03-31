import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({super.key});

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: password,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.lock_outline_rounded),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: rePassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Re-enter your password',
                suffixIcon: Icon(Icons.lock_outline_rounded),
              ),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
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
      ),
    ));
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
    password.dispose();
    rePassword.dispose();
  }
}
