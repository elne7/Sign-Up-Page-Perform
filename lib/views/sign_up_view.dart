import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_text_form_field.dart';
import 'package:validators/validators.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String fullName = '';
  String email = '';
  dynamic password;
  dynamic confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creating the app bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Shopping App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hintText: 'Full Name',
              onChanged: (value) {
                fullName = value;
              },
              validator: (value) {
                if (value != null) {
                  if (isLowercase(value[0])) {
                    return 'The first letter must be capitalized';
                  }
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'E-mail',
              onChanged: (value) {
                email = value;
              },
              validator: (value) {
                if (value != null) {
                  if (value.contains('@')) {
                    return 'The email maust have \'@\'';
                  }
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'Password',
              onChanged: (value) {
                password = value;
              },
              validator: (value) {
                if (value != null) {
                  if (value.length < 6) {
                    return 'The Password must have at least 6 characters';
                  }
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'Confirm Password',
              onChanged: (value) {
                confirmPassword = value;
              },
              validator: (value) {
                if (value != null) {
                  if (value != password) {
                    return 'It is not same as the password';
                  }
                }
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
