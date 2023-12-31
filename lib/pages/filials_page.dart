import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/main_page.dart';
import 'package:login_ui_for_job/widgets/credit_cart.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';

class FilialsPage extends StatefulWidget {
  const FilialsPage({Key? key}) : super(key: key);

  @override
  State<FilialsPage> createState() => _FilialsPageState();
}

class _FilialsPageState extends State<FilialsPage> {
  bool? isChecked = false;
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
                        child: SvgPicture.asset('assets/arrow_back.svg'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 35,
                        ),
                        child: Center(
                          child: Text(
                            "Филлиалы",
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 25,
                          left: 15,
                          right: MediaQuery.of(context).size.width * 0.49,
                        ),
                        width: double.infinity,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Вы можете отправить заявки во все МКК",
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          fontSize: 12,
                                          fontFamily: "OpenSans",
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 25,
                                  bottom: 15,
                                ),
                                child: CustomBtn(
                                  onTap: () {},
                                  padding: const EdgeInsets.all(0),
                                  text: "Отправить",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Gilroy-Regular",
                                        color: Theme.of(context).primaryColor,
                                      ),
                                  textColor: Theme.of(context).primaryColor,
                                  accentColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  height: 40,
                                  width: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child: SvgPicture.asset(
                          'assets/test.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool;
                          });
                        },
                        tristate: true,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      "С высоким рейтингом",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            fontFamily: "Gilroy-Regular",
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35, right: 15),
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 25,
                          ),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(66),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/location.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "На карте",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 14,
                                      fontFamily: "Gilroy-Regular",
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: CreditCart(
                          name: "Credit cart 14",
                          amount: '15000',
                          rate: "0%",
                          deadline: "от 7 до 30 дней",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: CreditCart(
                          name: "Credit cart 14",
                          amount: '15000',
                          rate: "0%",
                          deadline: "от 7 до 30 дней",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: CreditCart(
                          name: "Credit cart 14",
                          amount: '15000',
                          rate: "0%",
                          deadline: "от 7 до 30 дней",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
