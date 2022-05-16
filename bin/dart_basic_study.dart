import 'dart:math';

void main() {
  // 함수의 리턴값을 받고 실행할 때
  print('=====함수의 리턴값을 받고 실행=====');
  String message = funcionStudyReturnType(); // '완료'를 반환하여 변수에 저장
  print(message);

  int number = numberReturn(1, 2);
  print(number);

  number = numberReturn(3, 5);
  print(number);

  number = numberReturn(13, 12);
  print(number);

  // 함수의 리턴값을 받지 않고 실행할 때
  // 리턴값을 사용할 필요가 없을때 씀
  print('=====함수의 리턴값을 받지 않고 실행=====');
  numPlus(5, 6);
}

// void로 함수를 만들면 return 불가
void numPlus(int a, int b) {
  int sum = a + b;
  print('$a + $b = $sum');
}

int numberReturn(int a, int b) {
  return a + b;
}

String funcionStudyReturnType() {
  // 함수 작성
  // 반환타입 함수명(매개변수) {
  //  실행문;
  // }

  // 함수실행 : 함수명();
  // void 타입은 반환할게 없는 타임

  print('funcionStudyReturnType1');
  print('funcionStudyReturnType2');
  return '완료'; // funcionStudyReturnType함수에 반환함;
}

void basic13for() {
  print('함수 호출');
}

void basic12for() {
  // for (변수선언; 조건문; 증감식;) {
  //   실행문
  // }

  // for문 작동방식 : 변수선언은 시작할때 딱 한번만 선언
  // 그리고 (2)조건식 -> (3)실행문 -> (4) 증감식 -> 계속 반복하다 조건식이 거짓이면 종료
  // for ((최초1)변수선언; (2)조건식, (4)증감식 ) {
  //   (3)실행문
  // }

  // for loop
  final count = 3;
  for (var i = 0; i < count; i++) {
    print(i);
  }

  final scoreList = [42, 52, 68, 50, 90, 30, 100, 88, 90];

  for (var i = 0; i < scoreList.length; i++) {
    if (scoreList[i] >= 60) {
      print('${i + 1}번째 합격. 점수 : ${scoreList[i]}');
    } else {
      print('${i + 1}번째 불합격. 점수 : ${scoreList[i]}');
    }
  }

  // for in 문
  // for(변수선언 in 리스트) {
  //  실행문
  // }

  final scoreList2 = [42, 52, 68, 50, 90, 30, 100, 88, 90];

  // scoreList2에 있는 값들을 차례대로 score에 넣고 하나씩 실행
  int i = 1;
  for (var score in scoreList2) {
    if (score >= 60) {
      print('$i번째 합격. 점수 : ${score}');
    } else {
      print('$i번째 불합격. 점수 : ${score}');
    }
    i++;
  }
}

void basic11While() {
  // 반복문
  // 반복 횟수가 중요한가?
  // while(반복 횟수 중요X), for(반복 횟수 중요O)

  // while (조건문이 참일 경우) {
  //   실행문을 계속 반복함. 거짓일 경우 빠져나옴
  // }

  // while문 예시

  int weight = 65; // 현재 몸무게
  int count = 0; // 줄넘기 횟수

  // 현재 몸무게가 50보다 같거나 작을때 까지 실행
  while (weight > 50) {
    print('총 몸무게 : $weight');
    count++;
    print('줄넘기 횟수 : $count');

    var random = Random(); // 랜덤값 출력할때 사용
    var randomWeight = random.nextInt(2); // 0, 1, 2중에 랜덤으로 뽑아 할당
    weight = weight - randomWeight; // 현재 몸무게 - 랜덤으로 뽑은 숫자 = weight에 할당
    print('감량 무게: $randomWeight kg');
    print('총 몸무게: $weight kg');
    print('=====================');
  }
}

void basic10Switch() {
  // switch문

  // 변수 값이 해당 case값과 일치하면, 그 케이스문 실행. 전부 일치하지 않으면 default 실행
  // switch (변수) {
  //   case 값1:
  //     실행문1;
  //     break;
  //   case 값2:
  //     실행문2;
  //     break;
  //   default:
  //     실행문3
  // }
  int number = 33;
  print('number % 10 = ${number % 10}');

  switch (number % 10) {
    case 1:
      print('나머지값이 1입니다.');
      break;
    case 2:
      print('나머지값이 2입니다.');
      break;
    case 3:
      print('나머지값이 3입니다.');
      break;
    default:
      print('나머지값이 1,2,3이 아닙니다.');
  }

  // if, else문 보다 더 빠르고, 코드도 보기 좋기때문에 권장
}

void basic9ElseIf() {
  // 조건문
  //   if (조건문) {
  //     참 일때 실행문;
  //   } else {
  //     거짓 일때 실행문;
  //  }

  int number = 49;

  // if, else
  if (number % 2 == 0) {
    print('number값은 2의 배수입니다.');
  } else {
    print('number값은 2의 배수가 아닙니다');
    print('나머지값 : ${number % 2} ');
  }
  print('end');

  // else if
  int number2 = 29;

  if (number2 % 5 == 0) {
    print('5의 배수 입니다.');
  } else if (number2 % 4 == 0) {
    print('4의 배수 입니다.');
  } else if (number2 % 3 == 0) {
    print('3의 배수 입니다.');
  } else {
    print('5,4,3의 배수가 아닙니다.');
  }
}

void basic8() {
  // 변수 타입 마지막

  // nullable변수와 상수(final, const) 2

  // final, const 상수 : 한번 선언 하면 변경되지 않는 데이터
  final String name = '길동';
  print(name);

  const String name2 = '또치';
  print(name2);
  // name = '둘리'; // 에러

  // final 상수 :  run-time때 값을 할당 (코드를 차례대로 읽고 실행하면서 값이 할당됨)
  // const 상수 :  complie-time때 값 할당 (complie은 코드를 한번에 번역하여 실행)
  // 동작 자체는 동일함. 둘다 변치않는 데이터 라는건 같음
  // 실질적으로 값을 다룰때는 final을 많이 쓰고, 위젯을 쓸때 const를 많이씀

  // 예시)
  // 현재 시간 할당
  final DateTime now1 = DateTime.now();
  print(now1);

  // 1초뒤에 다음 코드를 실행 하겠다.
  Future.delayed(Duration(seconds: 1), () {
    final DateTime now2 = DateTime.now();
    print('=============');
    print(now1);
    print(now2);
  });

  // final 변수를 const로 바꾸면 실행안됨
}

void basic7() {
  // nullable변수와 상수(final, const) 2

  // non-nullable : null값 허용되지 않음
  print('======non-nullable=====');

  String name = '길동';
  print('non-nullable: $name');

  // nullable : null값 허용
  // 작성법 : 변수의 타입 앞에 ?(물음표) 작성
  print('======nullable=====');
  String? name1;
  print('nullable : $name1');

  name1 = '둘리';
  print('nullable : $name1');

  name1 = null;
  print('nullable : $name1');
}

void basic6() {
  // nullable변수와 상수(final, const) 1

  // var = 타입 추론이 가능한 타입
  // var보다는 타입을 명시 권장

  String name = 'Voyager I';
  int year = 1977;

  name = '123';
  name = 'dsa';

  year = 123;
  year = 751;

  // dynamic은 다양한 타입들을 받을 수 있는 변수 타입
  dynamic varTest = '길동';
  varTest = 3;
  varTest = 3.22;
  print(varTest);

  double antennaDiameter = 3.7;
  List<String> flybyObjects = [
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ];
  Map<String, dynamic> image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
}

void basic5() {
  // Map : Key, value pair(한쌍) 이뤄진 자료 규조
  // map 선언 방법
  // Map 변수명 = {Key:value}
  // 특징 1. Key값이 중복되면 안되고, 유니크 해야함
  // 특징 2. 데이터를 가져올때 Key값으로 가져옴

  // Key는 전부(dynamic), valye는 문자만(String) 들어오게 설정
  Map<dynamic, String> map = {
    123: '홍길동',
    456: '민지',
    233: '둘리',
    '456': '또치',
  };

  print(map);
  print(map['456']);
  print(map[456]);

  print('===============');

  // Key는 문자만(String), valye는 전부 다(dynamic) 들어오게 설정
  Map<String, dynamic> joinInputForm = {
    'name': '길동',
    'age': 24,
    'height': 170.3,
    'bool': true,
    'list': [true, true, true],
    'phone': '010-1234-1234',
  };

  print(joinInputForm);
  print(joinInputForm['name']);
  print(joinInputForm['age']);

  // Map 업데이트
  print('=====업데이트=====');
  joinInputForm['name'] = '둘리';
  print(joinInputForm);

  // joinInputForm에 name2라는 Key값이 없으면 추가됨
  joinInputForm['name2'] = '또치';
  print(joinInputForm);

  // Map 삭제
  joinInputForm.remove('name');
  print(joinInputForm);

  // Map 오퍼레이터
  Map<String, dynamic> joinInputForm2 = {
    'name': '길동',
    'age': 24,
    'height': 170.3,
    'phone': '010-1234-1234',
  };
  print(joinInputForm2);

  // 변수.keys : Key값만 뽑아오고 List로 변경
  print('Key값만 반환 : ${joinInputForm2.keys}');

  // List로 변경
  print('List로 변경 : ${joinInputForm2.keys.toList()}');
  // 길이
  print('길이 : ${joinInputForm2.length}');
  // value만 뽑아오고 List로 변경
  print('value : ${joinInputForm2.values}');
  print('value : ${joinInputForm2.values.toList()}');

  // clear는 함수임
  // clear는 map을 빈 map으로 바꿈 (empty(빈값)으로)
  // print('=====clear=====');
  // joinInputForm2.clear();
  // print(joinInputForm2);

  // containsKey : Key 포함여부 확인 (bool 반환)
  print(joinInputForm2.containsKey('name'));
  print(joinInputForm2.containsKey('width'));

  // containsValue : Valye 포함여부 확인
  print(joinInputForm2.containsValue('길동'));
  print(joinInputForm2.containsValue('둘리'));
}

void basic4(args) {
  // List는 중복된값 허용
  List<String> list = [];
  list.add('a');
  print(list);

  list.addAll(['b', 'c', 'a', '가']);
  print(list);
  print(list[0]);
  print(list[3]);

  // List, Set 에서 조금 사용되는 연산자
  // contains : 포함여부 확인 (bool타입 리턴)
  // first : List의 첫번째값
  // last : List의 마지막값
  print(list.contains('a'));
  print(list.contains('4'));
  print(list.contains('b'));

  print('list의 첫번째값 : ${list.first}');
  print('list의 마지막값 : ${list.last}');

  // List index기반으로 수정할때
  list[0] = '가';
  print(list);
  list[1] = '나';
  print(list);
  list[2] = '다';
  print(list);
  list[3] = '라';
  print(list);
  list[4] = '마';
  print(list);

  // List및Set Value값으로 삭제
  print('======================');
  list.remove('라');
  print(list);

  // List및Set index기반으로 삭제
  list.removeAt(0);
  print(list);
}

void basic3() {
  // List
  // List는 순서가 보장됨.
  // 순서기반으로 값을 저장하기 떄문에, 중복된값 허용
  List list = [];
  print(list);
  print(list.length); // 길이 구하기

  // 리스트 값 더하기
  list.add('A추가');
  list.add('B추가');
  list.add(123);
  print(list);
  print('list의 갯수 : 총 ${list.length}개');

  // List에 문자열(String)값만 넣어야 할때
  // <>제네릭타임 : eg. Lisg<String> = List안의 값들은 String으로 제한
  print('========================');
  List<String> stringList = <String>[];
  stringList.add('문자1');
  stringList.add('문자2');
  stringList.add('String만 들어갈 수 있음');
  // stringList.add(12); 에러
  print(stringList);

  // 숫자(Int)값만 넣어야 할 때
  List<int> intList = <int>[];
  intList.add(22);
  intList.add(432);
  intList.add(555);
  intList.add(7);
  print(intList);
  print('intList갯수 : ${intList.length}');

  // List안에 값을 가져올땐 index기반으로 접근
  intList[0] = 111;
  print(intList);

  // Set 선언 방법
  // 특징 1. : Set은 순서 보장이 안되는 열거 타입임. (index접근 X)
  // 특징 2. : 중복을 허용하지 않음. (똑같은걸 추가하면 첫번째로 추가한걸로 인식함)
  // 특징 3. : List보다 접근할때나 값을 담을때 빠르다.
  print('===== Set 선언 방법 =====');
  Set setType = {};
  setType.add('A추가');
  setType.add('B추가');
  setType.add(432);
  setType.add('A추가');

  print(setType);
  print(setType.length);

  // 문자만 추가하기
  Set<String> setStringType = {};

  setStringType.add('AAAA추가');
  setStringType.add('BBBB추가');
  print(setStringType);
}

void basic2() {
  // 2. 변수 타입
  // 문자열 값 = String

  // var는 타입 추론 가능
  // var name = 'Voyager I'; 는
  // String name = 'Voyager I'; 이렇게 인식해서, name = 12; 이렇게 int로 바꾸려고 하면 오류.
  // var보다는 타입(String, int등등..)을 명시 권장

  String name = 'Bora';
  String nickName = 'Dabo';

  print('name = $name');
  print('nickName = $nickName');

  // 숫자값 = 정수(int), 실수(double, 소수점 0)
  int age = 25;
  double width = 30; // double은 30.0으로 인식함
  double height = 170.3;
  print('나이 : $age');
  print('키 : $height');
  print('width: $width');

  print('----값 변경----');
  // 값 변경
  age = age + 1;
  print('나이 : $age');
  age++; // age = age + 1; 과 동일
  print('나이 : $age');
  --age;
  print('나이 : $age');

  // age = age + 1.1; (int는 실수값을 담지 못함)
  height = height + 1;
  print('키 : $height');

  width = width + 3;
  print('width: $width');

  width = width + 0.4;
  print('width: $width');

  print('--------------');
  int num1 = 12;
  int num2 = 5;
  print('12 + 5 = ${num1 + num2}');
  print('12 - 5 = ${num1 - num2}');
  print('12 * 5 = ${num1 * num2}');
  print('12 / 5 = ${num1 / num2}');
  print('12 % 5 = ${num1 % num2} (나머지값)'); // 나머지 값

  // boolean값 = bool
  print('----boolean값----');
  bool isShow = false;
  print('isShow = $isShow');

  bool isTrue = 4 > 10;
  print('4 > 10 = $isTrue');

  bool isTrue2 = 4 == 10;
  print('4 == 10 = $isTrue2');

  isTrue2 = 4 == 4;
  print('4 == 4 = $isTrue2');

  isTrue2 = 4 == 4;
  print('4 == 4.0 = $isTrue2');

  isTrue2 = 4 == 4.0 && 2 == 2.2;
  print('4 == 4.0 && 2 == 2.2 = $isTrue2');

  isTrue2 = 4 == 4.0 || 2 == 2.2;
  print('4 == 4.0 || 2 == 2.2 = $isTrue2');
}

void basic1() {
  // 변수 선언법
  // 변수타입 변수명 = 값;

  // 변수 규칙 1. : 중복선언 안됨
  // 변수 규칙 2. : 변수명은 소문자로 시작, 띄어쓰기 불가
  //               띄어쓰기 대신 카멜표기법
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);
}
