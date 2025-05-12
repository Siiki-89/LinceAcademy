import 'package:flutter/material.dart';

import 'ap1.dart';

ButtonStyle styleButton() {
  return ElevatedButton.styleFrom(
    backgroundColor: corBackgroundForm,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(vertical: 16),
  );
}

InputDecoration styleInputDecoration(String texto) {
  return InputDecoration(
    labelText: texto,
    labelStyle: TextStyle(color: corText),
    filled: true,
    fillColor: corBackgroundForm,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: corText),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: corText, width: 2),
    ),
  );
}
