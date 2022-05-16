// 추상화클래스(abstract class)
// abstract class는 인스턴스화를 못함, 자식클래스로 인스턴스화를 해야함
// circle와 rectangle를 인스턴스화 시켜야함

abstract class Shape {
  double getArea();
}

// 정리
// abstract class는 다음과 같이 구현체(body)가 없는 메소드를 정의할 수 있고
// 구현체(body)가 없기때문에 상속받은 circle와 rectangle 들은 override(재정의)을 강제적으로 부여함
// abstract class는 인스턴스화를 못한다.

// class Shape {
//   double getArea() {
//     return 0;
//   }
// }
