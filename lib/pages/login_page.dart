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
                      fontFamily: "Gilroy-Bold",
                    ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
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
                  padding: EdgeInsets.only(
                    left: 15,
                    top: MediaQuery.of(context).size.height * 0.1,
                  ),
                  child: Text(
                    "Номер телефона",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy-Regular",
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
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy-Regular",
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
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy-Regular",
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
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy-Regular",
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
              textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy-Regular",
                  ),
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
              child: Text(
                "Пройти регистрацию",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy-Regular",
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
