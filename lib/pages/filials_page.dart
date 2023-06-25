import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/pages/main_page.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';

class FilialsPage extends StatefulWidget {
  const FilialsPage({super.key});

  @override
  State<FilialsPage> createState() => _FilialsPageState();
}

class _FilialsPageState extends State<FilialsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
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
                          "Филлиалы ",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
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
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 170,
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
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomBtn(
                        onTap: () {},
                        padding: const EdgeInsets.all(0),
                        text: "Отправить",
                        textStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor,
                                ),
                        textColor: Theme.of(context).primaryColor,
                        accentColor: Theme.of(context).scaffoldBackgroundColor,
                        height: 35,
                        width: 120,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
