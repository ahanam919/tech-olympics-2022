final _questions_sharps = const [
  {
    'questionText':
        'You should touch the tip of the needle with your bare hands.',
    'answers': [
      {'text': 'True', 'score': 6},
      {'text': 'False', 'score': 1},
    ],
  },
  {
    'questionText':
        'What material can you store the sharps in if you do not have access to a sharp box?',
    'answers': [
      {'text': 'Glass', 'score': 9},
      {'text': 'Metal', 'score': 5},
      {'text': 'Plastic', 'score': 1},
      {'text': 'Wood', 'score': 4},
    ],
  },
  {
    'questionText':
        'Put all the sharps in the container until it reaches what capacity?',
    'answers': [
      {'text': '1/2', 'score': 4},
      {'text': '3/4', 'score': 1},
      {'text': '2/3', 'score': 6},
      {'text': '1/4', 'score': 3},
    ],
  },
];
List<Map<String, Object>> get Questions_sharps {
  return _questions_sharps;
}

final _questions_OTCandPM = const [
  {
    'questionText':
        'Prescribed medications are administered at ______ doses compared to OTCs.',
    'answers': [
      {'text': 'Higher', 'score': 1},
      {'text': 'Lower', 'score': 4},
      {'text': 'Same', 'score': 3},
      {'text': 'None of the Above', 'score': 7},
    ],
  },
  {
    'questionText': 'OTCs are cheaper than prescribed medicines.',
    'answers': [
      {'text': 'True', 'score': 1},
      {'text': 'False', 'score': 5},
    ],
  },
  {
    'questionText':
        'Should leftover prescribed medications be used for a minor ailment when they worked before?',
    'answers': [
      {
        'text':
            "Yes, they will apply the same benefits and will probably work at a faster pace.",
        'score': 7
      },
      {
        'text':
            'No, they were prescribed for a reason and could cause adverse side effects if used when not needed.',
        'score': 1
      },
      {
        'text': 'Yes, they cost money so we should use them to save money.',
        'score': 5
      },
      {'text': 'No, if I eat them I will explode.', 'score': 6},
    ],
  },
  {
    'questionText':
        'What is the key resource for determining how to dispose of the old bottles?',
    'answers': [
      {'text': "Label", 'score': 1},
      {'text': 'No specific instructions', 'score': 9},
      {'text': "What your mom says to do", 'score': 8},
      {'text': "Company website", 'score': 3},
    ],
  },
];
List<Map<String, Object>> get Questions_OTCandPM {
  return _questions_OTCandPM;
}
