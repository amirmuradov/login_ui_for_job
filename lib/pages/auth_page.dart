import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_for_job/pages/login_page.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';
import 'package:login_ui_for_job/widgets/custom_text_field.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Text(
                  "ЛОГО",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 44,
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Почта",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const CustomField(
              hintText: "test1234@gmail.com",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Номер телефона",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const CustomField(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Придумайте пароль",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const CustomField(
              hintText: "***********",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Повторите пароль",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            const CustomField(
              hintText: "***********",
            ),
            const SizedBox(
              height: 80,
            ),
            CustomBtn(
              height: 52,
              borderRadius: BorderRadius.circular(60),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              text: "Зарегистрироваться",
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Есть аккаунт ?",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const LoginPage();
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
            )
          ],
        ),
      ),
    );
  }
}
