class Pessoa {
  String name;
  String email;
  Pessoa({
    required this.name,
    required this.email,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa && other.name == name && other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;

  @override
  String toString() => 'Pessoa(name: $name, email: $email)';
}
