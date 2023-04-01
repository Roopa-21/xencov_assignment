import 'package:flutter/material.dart';
import 'package:nauggets/screens/screens.dart';
import 'package:nauggets/utils/colors.dart';
import 'package:nauggets/utils/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              height: 250,
              width: double.maxFinite,
              color: kPrimaryColor,
              child: const Center(
                child: Text(
                  'Welcome, to sign in continue',
                  style: style7,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:
                      const Color.fromARGB(255, 7, 134, 238).withOpacity(0.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Sign Up',
                    style: style4,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "    Phone Number",
                    style: style4,
                  ),
                  TextField(
                    controller: phoneController,
                    cursorColor: kSecondaryColor,
                    style: style5,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      prefixIconColor: kSecondaryColor,
                      hintText: "Phone",
                      fillColor: kSecondaryColor,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecondaryColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "    Password",
                    style: style4,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    cursorColor: kSecondaryColor,
                    style: style5,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30,
                      ),
                      prefixIconColor: kSecondaryColor,
                      hintText: "Password",
                      fillColor: kSecondaryColor,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kSecondaryColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(16),
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ));
                  },
                  child: const Text(
                    'Sign Up',
                    style: style6,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Forgot your password?',
                style: style3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
