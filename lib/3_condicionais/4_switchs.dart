void main() {
  final diaSemana = 0;
  var diaSemanaStr = '';

  switch (diaSemana) {
    case 0:
      diaSemanaStr = 'Domingo';
      break;

    case 1:
      diaSemanaStr = 'Domingo';
      break;
    // duas condições iguais
    case 2:
    case 3:
      diaSemanaStr = 'Domingo';
      break;
    default:
      diaSemanaStr = 'não identificado';
      break;
  }
}
