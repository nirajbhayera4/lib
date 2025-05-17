import 'package:flutter/material.dart';

void main() {
  runApp(const quizApp());
}

class quizApp extends StatefulWidget {
  const quizApp({super.key});

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      "questionText": "what is the capital of france?",
      "answers": [
        {"text": "berlin", "score": 0},
        {"text": "paris", "score": 1},
        {"text": "madrid", "score": 0},
        {"text": "rome", "score": 0},
      ],
    },
    {
      "questionText": "who painted mona lisa?",
      "answers": [
        {"text": "michaelangelo", "score": 0},
        {"text": "leonardo da vinci", "score": 1},
        {"text": "raphael", "score": 0},
        {"text": "donatello", "score": 0},
      ],
    },
    {
      "questionText": "what is the largest planet in our solar system?",
      "answers": [
        {"text": "mars", "score": 0},
        {"text": "jupiter", "score": 1},
        {"text": "venus", "score": 0},
        {"text": "earth", "score": 0},
      ],
    },
  ];
  void _answerquestion(int score) {
    setState(() {
      _score += score;
      _questionIndex++;
    });
  }

  void _resetquiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("basic quiz app"),
        ),
        body: _questionIndex < _questions.length
            ? quiz(
                questionText:
                    _questions[_questionIndex]["questionText"] as String,
                answers: _questions[_questionIndex]["answers"]
                    as List<Map<String, Object>>,
                answerQuestion: _answerquestion,
              )
            : result(_score, _resetquiz),
      ),
    );
  }
}

class quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function(int) answerQuestion;
  const quiz({
    super.key,
    required this.questionText,
    required this.answers,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text(
            questionText,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 30),
          ...answers.map((answer) {
            return ElevatedButton(
              onPressed: () => answerQuestion(answer["score"] as int),
              child: Text(answer["text"] as String),
            );
          }).toList(),
        ]));
  }
}

class result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  const result(this.score, this.resetHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("quiz finished !", style: const TextStyle(fontSize: 30)),
          Text(
            "your score: $score",
            style: const TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text("reset quiz"),
          )
        ],
      ),
    );
  }
}
