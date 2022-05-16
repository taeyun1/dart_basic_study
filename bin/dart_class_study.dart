// Student4 클래스를 사용하기 위해 임포트 해옴
import 'class/student.dart';
import 'inheritance/circle.dart';
import 'inheritance/person.dart';
import 'inheritance/rectangle.dart';
import 'inheritance/shape.dart';

void main() {
  /* 
  // instanece 인스턴스 : object(객체) 생성
  // (쉽게 말해 class안에 있는 변수와 함수를 활용할려면 instanece가 필요하다.)

  // ↓인스턴스한 변수
  Student girlStudent = Student('민지', 20);
  girlStudent.printInfo();

  // .을 통해 Student클래스 안에 변수 호출, 객체안 변수 재할당
  girlStudent.name = '둘리';
  girlStudent.age = 24;
  girlStudent.printInfo();

  // 인스턴스를 하는 동시에 즉, 생성자 초기값을 해준 동시에 값을 할당해 줄 수 있다.
  Student2 boyStudent = Student2(
    name: '철수',
    age: 23,
  );
  boyStudent.printInfo2();

  // =====================================
  Student3 etcStudent = Student3(
    name: '훈이',
    age: 25,
  );
  etcStudent.printInfo3();

  // ↓기존에 작성하던 코드(생성자)가 있던 말던 그냥 재할당함
  etcStudent.name = '맹구';
  etcStudent.age = 22;
  etcStudent.printInfo3();

  // =====================================
  Student4 etcStudent2 = Student4(
    name: '유리',
    age: 26,
  );
  etcStudent2.printInfo4();

  // 어떠한 값을 재할당 할때 뒤에 무조건 '학생'을 붙이고 싶을때
  etcStudent2.name = '짱구';
  print('main = ${etcStudent2.name} (getter로 가져온 값)');

  etcStudent2.age = 22;
  etcStudent2.printInfo4();

  */

  /*
  // 부모클래스 상속받기
  print('========mom========');
  Person mom = Person(name: '엄마');
  mom.speak();
  mom.walk();

  // 자식Hero은 부모Person의 변수,함수도 접근 가능
  print('========child========');
  Hero child = Hero('자식');
  child.speak();
  child.walk();
  child.fly(); // 부모(Person)은 접근못함

  // 부모Person은 자식Hero의 변수,함수접근 못함
  // 만들어진 인스턴스는 자식Hero이지만, child2의 객체타입은 부모Person이기 때문에
  // child2.fly()는 못씀
  // 하지만 walk는 자식이 만든 '뛴다'로 실행됨 왜냐면,
  // 인스턴스 자식Hero를 child2에 받았기 떄문에 override된 walk이 출력되고, 부모클래스에 정의 돼있던건 무효화시키고 자식Hero클래스에서 재정의한 함수로 호출이됨.
  print('========child2========');
  Person child2 = Hero('자식2222');
  child2.speak();
  child2.walk();

  print('=======speakName=====');
  speakName(mom);
  speakName(child);
  speakName(child2);
  // speakName(Bora());

  */

  // Shape사용하기
  Circle circle = Circle(3);
  Rectangle rectangle = Rectangle(5, 10.3);

  printArea(circle);
  printArea(rectangle);
  // printArea(Shape());
  // abstract class는 인스턴스화를 못함, 자식클래스로 인스턴스화를 해야함
}

void printArea(Shape shape) {
  print('면적 : ${shape.getArea()}');
}

// 상속은 같은 타입을 묶는 개념으로도 많이쓰임
void speakName(Person person) {
  print('이름 : ${person.name}');
}

// Class(클래스) : 객체지향프로그래밍(OOP)에서 특정 object(객체)를 생성하기 위해 정의하는 일종의 틀.
// - class는 변수와 함수를 정의할 수 있습니다.
// - 비슷한 성격을 가진 연관있는 변수와 함수들을 한 class에 정의합니다.

// 작성법 : class 클래스명 {}
// 클래스명은 첫글자는 대문자로 작성

class Student {
  // 생성자 constructor
  // Student(); -> 생성자

  // 인스턴스에서 보낸값 받기
  // Student(String myName, int myAge) {
  //   name = myName;
  //   age = myAge;
  // }

  // 여기서의 this.name는 class Student안에 있는 name을 가르킴
  // 하지만 이건 잘못된 작성법
  // Student(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 이렇게 작성하라고 권장
  // 인스턴스한 변수에서 값을 보낸걸 받아서, class Student 안에 있는 변수값을 변경해줌
  Student(this.name, this.age);

  // 디폴트 값 생성
  String name = '길동';
  int? age;

  void printInfo() {
    print('------');
    print('name : $name');
    print('age : $age');
    print('------');
  }
}

class Student2 {
  // String name의 변수타입이 non-nullable타입임 : null값이 허용되지 않는 타입
  // String값이 있어야 하기때문에 required를 붙여줘서 name값이 무조건 할당될 수 있도록 설정
  Student2({required this.name, this.age});

  String name;
  int? age;

  void printInfo2() {
    print('------');
    print('name : $name');
    print('age : $age');
    print('------');
  }
}

class Student3 {
  // 초기값을 변경해주고 싶을 때
  // 생성자 일때만 변경됨
  Student3({required String name, this.age}) : name = '$name 학생';

  String name;
  int? age;

  void printInfo3() {
    print('------');
    print('name : $name');
    print('age : $age');
    print('------');
  }
}
