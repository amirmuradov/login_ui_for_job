import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/main_page.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Поздравляем, вы начали обучение!",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: "Gilroy-Bold",
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SvgPicture.asset('assets/auth.svg'),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 45,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    "Пройдите все модули, успешно выполните тесты и получите ",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w600,
                    ),
                children: <TextSpan>[
                  TextSpan(
                    text: "сертификат о прохождении курса",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              "Morbi congue massa cum nec quis dignissim non. Lacus turpis ullamcorper porta enim lorem. Hendrerit odio lorem accumsan et leo id quam. Nulla sed interdum elementum ante facilisi porttitor non. Sit quis cras volutpat aliquam diam porta. In viverra pretium blandit fringilla tincidunt orci fermentum",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey.shade600.withOpacity(0.9),
                    fontSize: 14,
                    fontFamily: "OpenSans",
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          CustomBtn(
            onTap: () {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return const MainPage();
                  },
                ),
              );
            },
            text: "Далее",
            textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontFamily: "Gilroy",
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 14,
                ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            borderRadius: BorderRadius.circular(60),
            height: 52,
          ),
        ],
      ),
    );
  }
}
