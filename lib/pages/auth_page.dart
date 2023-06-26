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
                        fontFamily: "Gilroy-Bold",
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 15,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Почта",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy-Regular",
                          ),
                    ),
                  ),
                ],
              ),
            ),
            CustomField(
              hintText: "test1234@gmail.com",
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy-Regular",
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
            CustomField(
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Придумайте пароль",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy-Regular",
                        ),
                  ),
                ),
              ],
            ),
            CustomField(
              hintText: "***********",
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy-Regular",
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Повторите пароль",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gilroy-Regular",
                        ),
                  ),
                ),
              ],
            ),
            CustomField(
              hintText: "***********",
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 13,
              ),
              child: CustomBtn(
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
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontFamily: "Gilroy-Regular",
                    ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Есть аккаунт ?",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500,
                    fontFamily: "Gilroy-Regular",
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
