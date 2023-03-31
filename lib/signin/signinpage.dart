import 'package:flutter/material.dart';
import 'components/signin_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerScreen(context),
            const SignInForm(),
            footerScreen(context),
          ],
        ),
      ),
    );
  }

  Container footerScreen(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      child: Image.asset(
        'assets/images/dish_big.jfif',
      ),
    );
  }

  Container headerScreen(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 25),
      alignment: Alignment.topRight,
      child: Image.asset(
        'assets/images/dish_big2.jfif',
      ),
    );
  }
}
