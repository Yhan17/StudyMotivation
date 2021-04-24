import 'package:flutter/foundation.dart';
import 'package:study_motivation/core/constants/app_images.dart';
import 'package:study_motivation/core/models/answer_model.dart';
import 'package:study_motivation/core/models/home_state.dart';
import 'package:study_motivation/core/models/question_model.dart';
import 'package:study_motivation/core/models/quiz_model.dart';
import 'package:study_motivation/core/models/user_model.dart';
import 'package:study_motivation/core/repositories/home_repository.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
