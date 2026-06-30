void main() {
  List<String> subject = ['python', 'database', 'linear Algebra'];
  print('number of subject is ${subject.length}');
  print('first subject is ${subject[0]}');
  print('last subject is ${subject[2]}');

  subject.add('algorithm design');
  print(subject);

  Map<String, int> studentScore = {'python': 90, 'database': 100};
  print('Score database: ${studentScore['database']}');

  studentScore['linear algebra'] = 46;
  studentScore['algorithm design'] = 78;
  print('all subject and score: ${studentScore}');

  print('subject containg a');
  for (var key in studentScore.keys) {
    if (key.contains('a')) {
      print('${key} : ${studentScore[key]}');
    }
  }

  print('subject score > 50');
  for (var key in studentScore.keys) {
    if (studentScore[key]! > 50) {
      print('${key} : ${studentScore[key]}');
    }
  }
}
