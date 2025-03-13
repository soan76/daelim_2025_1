void main() {
  final testClass = ClassExample();

  final myAge = testClass.age(
    birthYear: 2023
  );

  print('나의 나이는 $myAge 입니다');

  final myBirth = testClass.birth(
    year: 2002,
    month: 1,
    day: 2
  );

  print(myBirth);

  final list = ['a','b','c','d','e'];

  for(var i = 0; i < list.length; i++){
    print('1번째: $i');
  }

  print('------------------------');

  list.forEach((item){
    print('2번째: $item');
  });

  print('-----------------------');

  List.generate(list.length, (i){
    final item = list[i];
    print('3번째: $i');
  });


  try {
    throw Exception('Error');
    print('Try');
  } catch(e) {
    print('Catch');
  } finally{
    print('finally');
  }
}

class ClassExample {
  String birth({required int year,required int month, int? day}){
    return '생년월일은 $year 년 $month 월 $day 일 입니다';
  }

  int age({int birthYear = 2024}){
    return 2025 - birthYear;
  }
}