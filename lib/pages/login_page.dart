import 'package:ap03/components/my_button.dart';
import 'package:ap03/components/my_textfield.dart';
import 'package:ap03/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            Center(
              child: Icon(
                Icons.lock,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'You\'ve been missed. Log in now.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 50),
            MyTextfield(
              hintText: 'Email',
              controller: emailController,
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextfield(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            MyButton(
              text: 'Sign In',
              onTap: signUserIn,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  imagePath: 'images/1.png',
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                SquareTile(
                  imagePath: 'images/2.png',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not yet a member? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
