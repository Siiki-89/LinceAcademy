String? validaNome(String? name) {
  if (name == null || name.isEmpty) {
    return 'Nome inválido';
  }

  return null;
}

String? validaEmail(String? email) {
  if (email == null || email.isEmpty || !email.contains('@')) {
    return 'Email inválido';
  }

  return null;
}

String? validaTelefone(String? phone) {
  if (phone == null || phone.isEmpty) {
    return 'Telefone inválido';
  }

  final phoneRegex = RegExp(r'^\d+$');
  if (!phoneRegex.hasMatch(phone)) {
    return 'O telefone deve conter apenas números';
  }

  return null;
}

String? validaGit(String? github) {
  if (github == null || github.isEmpty) {
    return 'Github invalido';
  }

  return null;
}
