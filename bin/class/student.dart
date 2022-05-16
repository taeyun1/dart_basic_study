class Student4 {
  // 초기값을 변경해주고 싶을 때
  // 생성자 일때만 변경됨
  Student4({required String name, this.age}) : _name = '$name 학생';

  // private한 변수 : 접근을 제한 (숨겨놓음)
  String _name;

  // public한 변수 : 모두 접근가능
  int? age;

  // Setter 만들기
  // setter만 외부에서 받을꺼고(값 설정은 외부에서 하고)
  // getter는 안돼 (값을 가져가는건 안돼)
  //         ↓ Setter는 여기가 타입이 결정되는부분(값을 가져오니까)
  set name(String value) {
    _name = '$value 학생';
  }

  // 값을 가져갈려면 getter 설정
  // getter이기 때문에 input요소가 없어서 ()는 빼고 실행문만 작성
  // String get name {
  //   print('getter $_name');
  //   return _name; // -> getter는 여기가 타입이 결정되는부분(값을 반환하니까)
  // }

  // getter를 할때 값을 반환하는거 밖에 없을때 작성
  String get name => _name; // return _name이랑 같음

  void printInfo4() {
    print('------');
    print('name : $_name');
    print('age : $age');
    print('------');
  }
}
