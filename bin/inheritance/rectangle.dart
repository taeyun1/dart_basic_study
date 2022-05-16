import 'shape.dart';

// 직사각형 너비 구하기
class Rectangle extends Shape {
  Rectangle(this.width, this.height);

  double width;
  double height;

// 추상화클래스로 되어있을때, 구현체가 없다면
// 무조건 필수적으로 구현체(body)를 작성하게끔 강제성을 부여함
  @override
  double getArea() {
    return width * height;
  }
}
