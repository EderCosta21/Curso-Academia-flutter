import 'dart:math';

class RandomFactoryModel {
  int id;
  String name;

  RandomFactoryModel()
      : id = Random().nextInt(1000),
        name = 'RandomFactoryModel' {
    print('$name:  id : $id');
  }
}
