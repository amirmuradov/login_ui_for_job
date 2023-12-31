import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/course_page.dart';
import 'package:login_ui_for_job/pages/filials_page.dart';
import 'package:login_ui_for_job/widgets/course_cart.dart';

import '../widgets/cart.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 24,
                    ),
                    Text(
                      "Главная",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: "Gilroy-Regular",
                          ),
                    ),
                    const Icon(
                      Icons.notification_add_sharp,
                      size: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Cart(
                      text:
                          "Используйте ежедневник для фиксирования информации во время обучения",
                    ),
                    Cart(
                      text:
                          "Используйте ежедневник для фиксирования информации во время обучения",
                    ),
                    Cart(
                      text:
                          "Используйте ежедневник для фиксирования информации во время обучения",
                    ),
                    Cart(
                      text:
                          "Используйте ежедневник для фиксирования информации во время обучения",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CourseCart(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const CoursePage();
                                  },
                                ),
                              );
                            },
                            svgpicture: SvgPicture.asset('assets/card1.svg'),
                            text: "Пройти курс",
                            description:
                                'Morbi congue massa cquis dignissim acus',
                            nexticon: SvgPicture.asset(
                              'assets/arrow_next.svg',
                            ),
                            descriptionstyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600.withOpacity(0.9),
                                ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: CourseCart(
                            onTap: () {},
                            avatarColor: Theme.of(context).cardColor,
                            svgpicture: SvgPicture.asset('assets/card2.svg'),
                            color: Theme.of(context).cardColor.withOpacity(0.3),
                            text: "Сертификация",
                            showprogressindicator: false,
                            description:
                                'Morbi congue massa cquis dignissim acus ignissim acus',
                            descriptionstyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600.withOpacity(0.9),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CourseCart(
                            onTap: () {},
                            color: Theme.of(context)
                                .secondaryHeaderColor
                                .withOpacity(0.3),
                            svgpicture: SvgPicture.asset('assets/card3.svg'),
                            avatarColor: Theme.of(context).secondaryHeaderColor,
                            showprogressindicator: false,
                            text: "Ежедневник",
                            description:
                                'Morbi congue massa cquis dignissim acus ignissim acus',
                            descriptionstyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600.withOpacity(0.9),
                                ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: CourseCart(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return const FilialsPage();
                                  },
                                ),
                              );
                            },
                            avatarColor: Theme.of(context).canvasColor,
                            svgpicture: SvgPicture.asset('assets/card4.svg'),
                            color:
                                Theme.of(context).canvasColor.withOpacity(0.3),
                            showprogressindicator: false,
                            text: "Филиалы",
                            description:
                                'Morbi congue massa cquis dignissim acus',
                            descriptionstyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600.withOpacity(0.9),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
