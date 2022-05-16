class Bora extends Person {
  Bora() : super(name: '보라');
}

// 부모클래스로 부터 상속받기
// 상속을 받으면 부모의 변수와 함수 사용가능
class Hero extends Person {
  // super(name)는 부모 클래스 Person의 생성자 name을 따라감
  // Hero생성자는 name값을 전달 받으면 Person의 name을 사용할 수 있음
  Hero(String name) : super(name: name);

  // 위랑 같음
  // Hero(String name) {
  //   super.name = name;
  // }

  // 자식만의 고유한 함수를 만들어 사용가능, 부모(Person)은 접근못함
  void fly() {
    print('$name, 날다. (자식 클래쓰)');
  }

  // 부모랑 같은 함수의 이름을 쓸때는?? (@override 사용)
  // 자식함수로 다시 재정의 시키는것(즉, 덮어쓰기)
  @override
  void walk() {
    // print('-----walk-----');
    // super.walk();
    print('$name, 뛴다. (자식 클래쓰)');
    // print('-----walk-----');
  }
}

class Person {
  Person({required this.name});

  String? name;

  void speak() {
    print('안녕 나는 $name 입니다. (부모 클래쓰)');
  }

  void walk() {
    print('$name은(는) 걷는중이다. (부모 클래쓰)');
  }
}
