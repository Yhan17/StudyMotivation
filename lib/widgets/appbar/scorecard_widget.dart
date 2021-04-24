import 'package:flutter/material.dart';
import 'package:study_motivation/core/constants/app_colors.dart';
import 'package:study_motivation/core/core.dart';
import 'package:study_motivation/widgets/appbar/chart_widget.dart';

class ScoreCardWidget extends StatefulWidget {
  final double percent;
  const ScoreCardWidget({Key? key, required this.percent}) : super(key: key);
  @override
  _ScoreCardWidgetState createState() => _ScoreCardWidgetState();
}

class _ScoreCardWidgetState extends State<ScoreCardWidget>
{


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: ChartWidget(value: widget.percent,)),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vamos Começar",
                        style: AppTextStyles.heading,
                      ),
                      Text(
                        "Complete os Desafios e avance em conhecimento",
                        style: AppTextStyles.body,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
