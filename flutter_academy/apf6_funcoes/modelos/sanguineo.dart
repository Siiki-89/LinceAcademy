import 'package:flutter/material.dart';

enum TipoSanguineo {
  aPositivo,
  aNegativo,
  bPositivo,
  bNegativo,
  oPositivo,
  oNegativo,
  abPositivo,
  abNegativo,
}

Color corSanguineo(TipoSanguineo tipo) {
  switch (tipo) {
    case TipoSanguineo.aPositivo:
      return Colors.blue;
    case TipoSanguineo.aNegativo:
      return Colors.red;
    case TipoSanguineo.bPositivo:
      return Colors.purple;
    case TipoSanguineo.bNegativo:
      return Colors.orange;
    case TipoSanguineo.oPositivo:
      return Colors.green;
    case TipoSanguineo.oNegativo:
      return Colors.yellow;
    case TipoSanguineo.abPositivo:
      return Colors.cyan;
    case TipoSanguineo.abNegativo:
      return Colors.white;
  }
}

String formatarSanguineo(TipoSanguineo tipo) {
  return tipo.name
      .replaceAll('Positivo', '+')
      .replaceAll('Negativo', '-')
      .toUpperCase();
}
