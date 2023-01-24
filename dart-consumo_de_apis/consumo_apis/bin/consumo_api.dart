// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:consumo_apis/models/eder/policy_resume_model.dart';
import 'package:consumo_apis/models/telefone.dart';

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

  print(cidadeJsonMap.runtimeType);

  final cidadeMap = json.decode(cidadeJsonMap) as Map;
  final cidadeMapList = json.decode(cidadeJsonList);

  print(cidadeMap['id']);
  print(cidadeMap);

  // cidadeMapList.forEach((city) => {print(city['nome'])});
  // cidadeMapList.forEach((city) => {print(city['estado']['nome'])});

// transformar em JSON
  final cidadeMapJson = <String, dynamic>{
    "id": 3,
    "nome": "piranguinho",
    "estado": {"nome": "minas gerais"}
  };

  // print(json.encode(cidadeMapJson));

  // como usar o modal Telefone

  const telefoneJson = '''
   {
            "ddd": 35,
            "numero": 36217174
          }
''';
  print('/////////////////////////////////');

  final telefone = Telefone.fromJson(telefoneJson);

  // print(telefone.ddd);
  // print(telefone.toString());
  // print(telefone.toMap());
  // print(telefone.toJson());

  //////////////////////////////////////////////////////////
  ///model real
  ///
  const policy = '''
     {
        "idApolice": "115658527",
        "itemApolice": "000",
        "dataInicioVigencia": "04/03/2021",
        "dataFimVigencia": "04/03/2022",
        "resumo": "FTC0I50 BMW R 1200",
        "veiculo": "BMW R 1200",
        "placa": "FTC0I50",
        "idApoliceSusep": "517720211A310089685",
        "numeroEndossoSusep": "0",
        "ramo": {
            "id": 1212,
            "descricao": "Moto"
        }
      }
''';

  // final policyMap = PolicyResumeModel.fromJson(policy);

  // print(policyMap);

  const policyList = '''[
    {
        "idApolice": "115658516",
        "itemApolice": "000",
        "dataInicioVigencia": "04/03/2021",
        "dataFimVigencia": "04/03/2022",
        "resumo": "QQQ0808 CHEVROLET TRACKER",
        "veiculo": "CHEVROLET TRACKER",
        "placa": "QQQ0808",
        "idApoliceSusep": "517720211A310089682",
        "numeroEndossoSusep": "0",
        "ramo": {
            "id": 1211,
            "descricao": "Automóvel"
        }
    },
    {
        "idApolice": "115658527",
        "itemApolice": "000",
        "dataInicioVigencia": "04/03/2021",
        "dataFimVigencia": "04/03/2022",
        "resumo": "FTC0I50 BMW R 1200",
        "veiculo": "BMW R 1200",
        "placa": "FTC0I50",
        "idApoliceSusep": "517720211A310089685",
        "numeroEndossoSusep": "0",
        "ramo": {
            "id": 1212,
            "descricao": "Moto"
        }
    }

]
''';

  final mock = json.decode(policyList) as List;
  print(mock.runtimeType);
  final policyMapList = mock.map((e) => PolicyResumeModel.fromJson(e)).toList();

  // final policyMapList = PolicyListModel.fromJson(policyList);
  print(policyMapList.runtimeType);
  final policyMapList2 =
      List<Map<String, dynamic>>.from(jsonDecode(policyList));

  print(policyMapList[0]);
}
