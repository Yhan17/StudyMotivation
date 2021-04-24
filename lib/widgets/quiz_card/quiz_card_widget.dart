import 'package:flutter/material.dart';
import 'package:study_motivation/core/constants/app_colors.dart';
import 'package:study_motivation/core/constants/app_images.dart';
import 'package:study_motivation/core/constants/app_text_styles.dart';
import 'package:study_motivation/core/shared/widgets/progressindicator/progressindicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final VoidCallback onTap;
  final double percent;
  const QuizCardWidget(
      {Key? key,
      required this.title,
      required this.completed,
      required this.percent, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    completed,
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ProgressIndicatorWidget(value: percent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
