String? nomeCompleto;
void main() {
  //Null Aware operator
  // var nomeLocal = nomeCompleto ?? 'Nome não preenchido';

// IF convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  } else {
    print('Nome não encontrado');
  }

// Conditional Property Access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não encontrado');
}
