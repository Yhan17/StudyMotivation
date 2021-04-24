import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:study_motivation/core/constants/app_text_styles.dart';
import 'package:study_motivation/core/core.dart';
import 'package:study_motivation/widgets/next_button/next_button_widget.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.illustration),
            Column(
              children: [
                Text(
                  "Parabéns!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text.rich(
                    TextSpan(
                        text: "Você concluiu\n",
                        style: AppTextStyles.body,
                        children: [
                          TextSpan(
                            text: "$title \n",
                            style: AppTextStyles.bodyBold,
                          ),
                          TextSpan(
                            text: "com $result de $length acertos.",
                            style: AppTextStyles.body,
                          )
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68.0),
                      child: NextButtonWidget.purple(
                          label: "Compartilhar", onTap: () {
                            Share.share("Veja quanto eu tirei no desafio $title do quiz dev: $result/$length questões");
                          }),
                    )),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68.0),
                        child: NextButtonWidget.transparent(
                            label: "Voltar ao início",
                            onTap: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
