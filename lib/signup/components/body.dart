import 'package:flutter/material.dart';
import 'package:th_flutter_s7/signup/components/signup_form.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(children: const [
          SizedBox(height: 15),
          Text(
            'Register Account',
            style: TextStyle(
                fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          Text(
            'Complete your detail or continute \n with social media',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
          SignUpForm(),
        ]),
      ),
    );
  }
}
