// ignore_for_file: avoid_print

import 'dart:convert';

void main(List<String> args) {
  String cidadeJsonMap = '''
        {
            "id":1,
            "nome":  "brasopi"
        }
''';
  String cidadeJsonList = '''
        [{
            "id":1,
            "nome":  "brasopi",
             "estado" : {
               "nome":  "minas gerais"
            }
        },
        {
            "id":2,
            "nome":  "itajuba",
             "estado" : {
               "nome":  "minas gerais"
            }
        },
        {
            "id":3,
            "nome":  "piranguinho",
            "estado" : {
               "nome":  "minas gerais"
            }
        }]
''';

// [] => List
// {} => Map<String,dynamic>

  final cidadeMap = json.decode(cidadeJsonMap) as Map;
  final cidadeMapList = json.decode(cidadeJsonList);

  print(cidadeMap['id']);

  cidadeMapList.forEach((city) => {print(city['nome'])});
  cidadeMapList.forEach((city) => {print(city['estado']['nome'])});

// transformar em JSON
  final cidadeMapJson = <String, dynamic>{
    "id": 3,
    "nome": "piranguinho",
    "estado": {"nome": "minas gerais"}
  };

  print(json.encode(cidadeMapJson));
}
