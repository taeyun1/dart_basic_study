import 'shape.dart';

// 반지름 너비 구하는 함수 만들기
class Circle extends Shape {
  Circle(this.redius);

  double redius;

// 추상화클래스로 되어있을때, 구현체(body)가 없다면
// 무조건 필수적으로 구현체(body)를 작성하게끔 강제성을 부여함
  @override
  double getArea() {
    return redius * redius * 3.14;
  }
}
// extends로 작성했을때는 body부분이 없는것만 즉, 메소드 구현체가 없는것만 필수적으로 재정의
// 나머지는 선택사항
// 
// implements로 작성했을때는 작성된 변수와 함수 모두를
// 재정의 해야한다.

// class Circle implements Shape {
//   Circle(this.redius);

//   double redius;

//   @override
//   double getArea() {
//     return redius * redius * 3.14;
//   }
// }
