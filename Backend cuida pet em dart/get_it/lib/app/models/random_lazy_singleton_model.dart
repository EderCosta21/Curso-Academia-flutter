import 'dart:math';

class RandomLazySingletonModel {
  int id;
  String name;

  RandomLazySingletonModel()
      : id = Random().nextInt(1000),
        name = 'RandomLazySingletonModel' {
    print('$name:  id : $id');
  }
}
