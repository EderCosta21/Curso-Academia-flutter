import 'dart:convert';

import 'package:consumo_apis/models/eder/ramo_model.dart';

class PolicyResumeModel {
  final String idApolice;
  final String itemApolice;
  final String dataInicioVigencia;
  final String dataFimVigencia;
  final String resumo;
  final String veiculo;
  final String placa;
  final String idApoliceSusep;
  final String numeroEndossoSusep;
  final RamoModel ramo;
  PolicyResumeModel({
    required this.idApolice,
    required this.itemApolice,
    required this.dataInicioVigencia,
    required this.dataFimVigencia,
    required this.resumo,
    required this.veiculo,
    required this.placa,
    required this.idApoliceSusep,
    required this.numeroEndossoSusep,
    required this.ramo,
  });

  Map<String, dynamic> toMap() {
    return {
      'idApolice': idApolice,
      'itemApolice': itemApolice,
      'dataInicioVigencia': dataInicioVigencia,
      'dataFimVigencia': dataFimVigencia,
      'resumo': resumo,
      'veiculo': veiculo,
      'placa': placa,
      'idApoliceSusep': idApoliceSusep,
      'numeroEndossoSusep': numeroEndossoSusep,
      'ramo': ramo.toMap(),
    };
  }

  factory PolicyResumeModel.fromJson(Map<String, dynamic> json) {
    return PolicyResumeModel(
      idApolice: json['idApolice'],
      itemApolice: json['itemApolice'],
      dataInicioVigencia: json['dataInicioVigencia'],
      dataFimVigencia: json['dataFimVigencia'],
      resumo: json['resumo'],
      veiculo: json['veiculo'],
      placa: json['placa'],
      idApoliceSusep: json['idApoliceSusep'],
      numeroEndossoSusep: json['numeroEndossoSusep'],
      ramo: RamoModel(
        id: json['ramo']['id'],
        descricao: json['ramo']['descricao'],
      ),
    );
  }

  @override
  String toString() {
    return 'PolicyResumeModel(idApolice: $idApolice, itemApolice: $itemApolice, dataInicioVigencia: $dataInicioVigencia, dataFimVigencia: $dataFimVigencia, resumo: $resumo, veiculo: $veiculo, placa: $placa, idApoliceSusep: $idApoliceSusep, numeroEndossoSusep: $numeroEndossoSusep, ramo: $ramo)';
  }

  factory PolicyResumeModel.fromMap(Map<String, dynamic> map) {
    return PolicyResumeModel(
      idApolice: map['idApolice'] ?? '',
      itemApolice: map['itemApolice'] ?? '',
      dataInicioVigencia: map['dataInicioVigencia'] ?? '',
      dataFimVigencia: map['dataFimVigencia'] ?? '',
      resumo: map['resumo'] ?? '',
      veiculo: map['veiculo'] ?? '',
      placa: map['placa'] ?? '',
      idApoliceSusep: map['idApoliceSusep'] ?? '',
      numeroEndossoSusep: map['numeroEndossoSusep'] ?? '',
      ramo: RamoModel.fromMap(map['ramo']),
    );
  }
}
