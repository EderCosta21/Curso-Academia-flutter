import 'dart:math';

class RandomSingletonModel {
  int id;
  String name;

  RandomSingletonModel()
      : id = Random().nextInt(1000),
        name = 'RandomSingletonModel' {
    print('$name:  id : $id');
  }
}
