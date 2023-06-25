import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/auth_page.dart';
import 'package:login_ui_for_job/pages/onboarding.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';
import 'package:login_ui_for_job/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Text(
                "ЛОГО",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/login.svg',
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 110,
                  ),
                  child: Text(
                    "Номер телефона",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: CustomField(
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                  ),
                  child: Text(
                    "Пароль",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: CustomField(
                hintText: "******",
                suffixText: "Забыли ?",
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            CustomBtn(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const AuthPage();
                    },
                  ),
                );
              },
              text: "Войти",
              height: 52,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              borderRadius: BorderRadius.circular(60),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const Onboarding();
                    },
                  ),
                );
              },
              child: const Text(
                "Пройти регистрацию",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
