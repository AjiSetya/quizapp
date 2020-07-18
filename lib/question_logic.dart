import 'package:quizapp/question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('Makan dengan tangan kanan.', true),
    Question('Makan minum sambil berdiri.', false),
    Question('Makan sampai kekenyangan.', false),
    Question('Membaca doa sebelum dan sesudah makan.', true),
    Question('Mendahului guru saat tanpa salam dan sambil berlari.', false),
    Question('Menutup mata ketika melakukan shalat.', false),
    Question('Memperhatikan ketika guru atau orang sedang menjelaskan.', true),
    Question('Memanggil teman dengan sebutan yang tidak baik.', false),
    Question(
        'Melampiaskan amarah saat terkena musibah dengan menyebut kata-kata kotor atau hewan.',
        false),
    Question('Saling bekerja sama saat ujian.', false)
  ];

  String getQuestion() => _questionList[_questionNumber].question;
  int getTotalQuestionText() => _questionList.length;
  int getQuestionNumberText() => _questionNumber + 1;
  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
