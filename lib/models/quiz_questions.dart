final _questions = const [
  {
    'questionText': 'What\'s your favorite color?',
    'answers': [
      {'text': 'Black', 'score': 2},
      {'text': 'Red', 'score': 11},
      {'text': 'Green', 'score': 11},
      {'text': 'Blue', 'score': 11},
    ],
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answers': [
      {'text': 'Dog', 'score': 11},
      {'text': 'Snake', 'score': 1},
      {'text': 'Elephant', 'score': 5},
      {'text': 'Penguin', 'score': 1},
    ],
  },
  {
    'questionText': 'Who\'s your favorite instructor?',
    'answers': [
      {'text': 'Max', 'score': 1},
      {'text': 'Ahana', 'score': 10},
      {'text': 'Ahana', 'score': 10},
      {'text': 'Ahana', 'score': 10},
    ],
  },
];
List<Map<String, Object>> get Questions {
  return _questions;
}
