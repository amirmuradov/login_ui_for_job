import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/main_page.dart';
import 'package:login_ui_for_job/widgets/custom_expansion.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: GestureDetector(
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
                        child: SvgPicture.asset(
                          'assets/arrow_back.svg',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 35,
                        ),
                        child: Center(
                          child: Text(
                            "Курс",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  fontFamily: "Gilroy-Regular",
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 175,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 35,
                            color: Colors.grey.shade300.withOpacity(1),
                            offset: const Offset(0, 1),
                          )
                        ]),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/ikon.svg',
                              height: 32,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ваши достижения",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Gilroy-Regular",
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "15 / 45 тем",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Regular",
                                    color: Colors.grey.shade600.withOpacity(1),
                                  ),
                            ),
                            Text(
                              "6/12 модулей",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey.shade600.withOpacity(1),
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Regular",
                                  ),
                            ),
                            Text(
                              "6/24 тестов",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.grey.shade600.withOpacity(1),
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Regular",
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: LinearPercentIndicator(
                                progressColor: Theme.of(context).primaryColor,
                                percent: 0.3,
                              ),
                            ),
                            Text(
                              "30%",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12,
                                    fontFamily: "Gilroy-Regular",
                                    fontWeight: FontWeight.w600,
                                  ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: CustomBtn(
                            padding: const EdgeInsets.all(0),
                            onTap: () {},
                            accentColor:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(66),
                            text: "Сбросить прогресс обучения",
                            textStyle:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Gilroy-Regular",
                                    ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        "Все модули",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gilroy-Regular",
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomExpansionPanel(
                  sessionTexts: const [
                    "Сессия 1",
                    "Сессия 2",
                    "Сессия 3",
                    "Сессия 4",
                  ],
                  decorationboxtext: "Сессия",
                  decorationboxstyle:
                      Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "Gilroy-Regular",
                          ),
                  checkbox: SvgPicture.asset('assets/checkbox.svg'),
                  text: "Модуль №1",
                  decorationboxdescription: "14мин",
                  decorationboxtextstyle:
                      Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "Gilroy-Regular",
                          ),
                  descriptioncheckbox: SvgPicture.asset(
                    'assets/checkbox.svg',
                  ),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy-Regular",
                      ),
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
